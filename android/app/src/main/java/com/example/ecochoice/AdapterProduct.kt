package com.example.ecochoice

import android.content.Context
import android.content.Intent
import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.example.ecochoice.databinding.ProductListBinding

class AdapterProduct (private val context: Context) : RecyclerView.Adapter<AdapterProduct.MyView>() {
    private var productlist = listOf<Product>()

    inner class MyView(private val binding: ProductListBinding): RecyclerView.ViewHolder(binding.root) {
        fun bind(pos: Int) {
            val response = productlist[pos]
            val intent = Intent(context, WebActivity::class.java)
            intent.putExtra("url", response.producturl)
            context.startActivity(intent)
        }
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): MyView {
        val view = ProductListBinding.inflate(LayoutInflater.from(parent.context), parent, false)
        return MyView(view)
    }

    override fun onBindViewHolder(holder: MyView, position: Int) {
        holder.bind(position)
    }

    override fun getItemCount(): Int {
        return productlist.size
    }

    fun setList(list: List<Product>) {
        productlist = list
    }
}