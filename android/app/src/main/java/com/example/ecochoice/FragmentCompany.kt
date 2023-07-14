package com.example.ecochoice

import android.content.Context
import android.os.Bundle
import android.util.Log
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Toast
import androidx.core.content.ContextCompat
import androidx.recyclerview.widget.DividerItemDecoration
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import androidx.recyclerview.widget.StaggeredGridLayoutManager
import com.example.ecochoice.databinding.ActivityMainBinding
import com.example.ecochoice.databinding.FragmentCompanyBinding
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory

class FragmentCompany : Fragment() {

    private val binding: FragmentCompanyBinding by lazy {
        FragmentCompanyBinding.inflate(layoutInflater)
    }

    lateinit var mainActivity: MainActivity
    private var searchList: List<Company> = listOf()
    private lateinit var companyadapter : AdapterCompany
    private var companylist = listOf<Company>()
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

        companyadapter = AdapterCompany(mainActivity)

        recyclerView = binding.companyRv

        recyclerView.layoutManager = StaggeredGridLayoutManager(1, StaggeredGridLayoutManager.VERTICAL)

        val dividerItemDecoration = DividerItemDecoration(requireContext(), LinearLayoutManager.VERTICAL)

        recyclerView.addItemDecoration(dividerItemDecoration)

        recyclerView.adapter = companyadapter

        val retrofit = Retrofit.Builder()
            .baseUrl("http://3.35.39.186/")
            .addConverterFactory(GsonConverterFactory.create())
            .build()

        val apiService = retrofit.create(RetrofitService::class.java)

        val call = apiService.companies()

        call.enqueue(object : Callback<List<Company>> {
            override fun onResponse(call: Call<List<Company>>, response: Response<List<Company>>) {
                if (response.isSuccessful) {
                    val companyList = response.body()
                    if (companyList != null) {
                        companylist = companyList

                        val bundle = arguments
                        if (bundle != null) {
                            val value = bundle.getString("editstring").toString()
                            search(value)
                        }else{
                            companyadapter.setList(companylist)
                            companyadapter.notifyDataSetChanged()
                        }
                    }
                } else {
                    Log.e("RetrofitService", "Response failed: ${response.code()}")
                }
            }

            override fun onFailure(call: Call<List<Company>>, t: Throwable) {
                val errorMessage = "Call Failed: ${t.message}"
                Log.d("RetrofitService", errorMessage)
            }
        })
        binding.fcSearchBtn.setOnClickListener {
            val searchKeyword = binding.fcEditCompany.text.toString()
            search(searchKeyword)
        }

        return binding.root
    }

    private fun search(searchKeyword : String){
        searchList = companylist.filter { company ->
            company.companyname.contains(searchKeyword, ignoreCase = true)
        }
        companyadapter.setList(searchList)
        companyadapter.notifyDataSetChanged()

        if(searchList.size < 1){
            Toast.makeText(requireContext(), "일치하는 기업 정보가 없습니다.", Toast.LENGTH_SHORT).show()
        }
    }
}