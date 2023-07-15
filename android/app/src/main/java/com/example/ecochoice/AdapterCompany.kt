package com.example.ecochoice

import android.content.Context
import android.content.Intent
import android.util.Log
import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.example.ecochoice.databinding.CompanyListBinding

class AdapterCompany(private val context: Context) : RecyclerView.Adapter<AdapterCompany.MyView>() {
    private var companylist = listOf<Company>()

    inner class MyView(private val binding: CompanyListBinding): RecyclerView.ViewHolder(binding.root) {
        fun bind(pos: Int) {
            val response = companylist[pos]
            binding.company.text = "${response.companyname}"
            binding.esg.text = "${response.esgrank2022}"
            binding.e.text = "${response.erank2022}"
            binding.s.text = "${response.srank2022}"
            binding.g.text = "${response.grank2022}"

            binding.root.setOnClickListener{
                val intent = Intent(context, CompanyActivity::class.java)
                intent.putExtra("name", response.companyname)
                intent.putExtra("esg2022", response.esgrank2022)
                intent.putExtra("e2022", response.erank2022)
                intent.putExtra("s2022", response.srank2022)
                intent.putExtra("g2022", response.grank2022)
                intent.putExtra("esg2021", response.esgrank2021)
                intent.putExtra("e2021", response.erank2021)
                intent.putExtra("s2021", response.srank2021)
                intent.putExtra("g2021", response.grank2021)
                intent.putExtra("esg2020", response.esgrank2020)
                intent.putExtra("e2020", response.erank2020)
                intent.putExtra("s2020", response.srank2020)
                intent.putExtra("g2020", response.grank2020)
                Log.d("intenttest", response.companyname)
                context.startActivity(intent)
            }
        }
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): MyView {
        val view = CompanyListBinding.inflate(LayoutInflater.from(parent.context), parent, false)
        return MyView(view)
    }

    override fun onBindViewHolder(holder: MyView, position: Int) {
        holder.bind(position)
    }

    override fun getItemCount(): Int {
        return companylist.size
    }

    fun setList(list: List<Company>) {
        companylist = list
    }
}