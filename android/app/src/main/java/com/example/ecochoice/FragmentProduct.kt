package com.example.ecochoice

import android.content.Context
import android.os.Bundle
import android.util.Log
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Toast
import androidx.recyclerview.widget.DividerItemDecoration
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import androidx.recyclerview.widget.StaggeredGridLayoutManager
import com.example.ecochoice.databinding.FragmentProductBinding
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory

class FragmentProduct : Fragment() {

    private val binding: FragmentProductBinding by lazy {
        FragmentProductBinding.inflate(layoutInflater)
    }

    lateinit var mainActivity: MainActivity
    private var searchList: List<Product> = listOf()
    private var nullcheckList: List<Product> = listOf()
    private lateinit var productadapter : AdapterProduct
    private var productlist = listOf<Product>()
    private lateinit var recyclerView: RecyclerView

    override fun onAttach(context: Context) {
        super.onAttach(context)

        mainActivity = context as MainActivity
    }

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        productadapter = AdapterProduct(mainActivity)

        recyclerView = binding.rvProduct

        recyclerView.layoutManager = StaggeredGridLayoutManager(1, StaggeredGridLayoutManager.VERTICAL)

        val dividerItemDecoration = DividerItemDecoration(requireContext(), LinearLayoutManager.VERTICAL)

        recyclerView.addItemDecoration(dividerItemDecoration)

        recyclerView.adapter = productadapter

        val retrofit = Retrofit.Builder()
            .baseUrl("http://3.35.39.186/")
            .addConverterFactory(GsonConverterFactory.create())
            .build()

        val apiService = retrofit.create(RetrofitService::class.java)

        val call = apiService.product()

        call.enqueue(object : Callback<List<Product>> {
            override fun onResponse(call: Call<List<Product>>, response: Response<List<Product>>) {
                if (response.isSuccessful) {
                    val productList = response.body()
                    if (productList != null) {
                        productlist = productList
                        nullcheck()

                        val bundle = arguments
                        if (bundle != null) {
                            val value = bundle.getString("editstring").toString()
                            search(value)
                        }else{
                            productadapter.setList(nullcheckList)
                            productadapter.notifyDataSetChanged()
                        }
                    }
                } else {
                    Log.e("RetrofitService", "Response failed: ${response.code()}")
                }
            }

            override fun onFailure(call: Call<List<Product>>, t: Throwable) {
                val errorMessage = "Call Failed: ${t.message}"
                Log.d("RetrofitService", errorMessage)
            }
        })

        binding.fpSearchBtn.setOnClickListener {
            val searchKeyword = binding.fpEditProduct.text.toString()
            search(searchKeyword)
        }

        return binding.root
    }
    private fun search(searchKeyword : String){
        searchList = nullcheckList.filter { product ->
            product.productname.contains(searchKeyword, ignoreCase = true)
        }
        productadapter.setList(searchList)
        productadapter.notifyDataSetChanged()

        if(searchList.size < 1){
            Toast.makeText(requireContext(), "일치하는 제품 정보가 없습니다.", Toast.LENGTH_SHORT).show()
        }
    }

    private fun nullcheck() {
        nullcheckList = productlist.filter { product ->
            product.productname != null && product.productname.contains(product.companyname)
        }
    }
}