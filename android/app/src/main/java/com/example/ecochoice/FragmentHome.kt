package com.example.ecochoice

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.FrameLayout
import android.widget.Toast
import com.example.ecochoice.databinding.ActivityMainBinding
import com.example.ecochoice.databinding.FragmentHomeBinding
import com.google.android.material.bottomnavigation.BottomNavigationView
import java.util.*

class FragmentHome : Fragment() {

    private val binding: FragmentHomeBinding by lazy {
        FragmentHomeBinding.inflate(layoutInflater)
    }
    private val mainbinding: ActivityMainBinding by lazy {ActivityMainBinding.inflate(layoutInflater)}

    private lateinit var mainActivity: MainActivity

    override fun onAttach(context: Context) {
        super.onAttach(context)
        mainActivity = context as MainActivity

    }

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {

        val drawableList = mutableListOf<Int>()
        drawableList.add(R.drawable.today1)
        drawableList.add(R.drawable.today2)
        drawableList.add(R.drawable.today3)
        drawableList.add(R.drawable.today4)
        drawableList.add(R.drawable.today5)
        drawableList.add(R.drawable.today6)
        drawableList.add(R.drawable.today7)
        drawableList.add(R.drawable.today8)
        drawableList.add(R.drawable.today9)
        drawableList.add(R.drawable.today10)
        drawableList.add(R.drawable.today11)
        drawableList.add(R.drawable.today12)
        drawableList.add(R.drawable.today13)
        drawableList.add(R.drawable.today14)
        drawableList.add(R.drawable.today15)
        drawableList.add(R.drawable.today16)
        drawableList.add(R.drawable.today17)
        drawableList.add(R.drawable.today18)
        drawableList.add(R.drawable.today19)
        drawableList.add(R.drawable.today20)
        drawableList.add(R.drawable.today21)
        drawableList.add(R.drawable.today22)
        drawableList.add(R.drawable.today23)
        drawableList.add(R.drawable.today24)
        drawableList.add(R.drawable.today25)
        drawableList.add(R.drawable.today26)
        drawableList.add(R.drawable.today27)
        drawableList.add(R.drawable.today28)
        drawableList.add(R.drawable.today29)
        drawableList.add(R.drawable.today30)
        drawableList.add(R.drawable.today31)
        drawableList.add(R.drawable.today32)

        val drawableResId = drawableList[hometoday()]
        binding.today.setImageResource(drawableResId)

        val fragmentManager = requireActivity().supportFragmentManager

        binding.fhSearchBtn.setOnClickListener {
            if(binding.fhEditHome.text.isEmpty()){
                Toast.makeText(requireContext(), "검색란이 비었습니다.", Toast.LENGTH_SHORT).show()
            }
            else{
                if(binding.btnCompany.isChecked){
                    val company = binding.fhEditHome.text.toString()
                    val intent = Intent(requireContext(), MainActivity::class.java)
                    intent.putExtra("editstring", company)
                    intent.putExtra("fragment", "company")
                    startActivity(intent)
                }
                else if(binding.btnProduct.isChecked){
                    val product = binding.fhEditHome.text.toString()
                    val intent = Intent(requireContext(), MainActivity::class.java)
                    intent.putExtra("editstring", product)
                    intent.putExtra("fragment", "product")
                    startActivity(intent)
                }
                else{
                    Toast.makeText(requireContext(), "기업과 제품 중 하나를 선택해 주세요.", Toast.LENGTH_SHORT).show()
                }
            }
        }
        return binding.root
    }

    fun hometoday(): Int {
        return Random().nextInt(31)+1
    }
}