package com.example.ecochoice

import android.content.Context
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import com.example.ecochoice.databinding.ActivityMainBinding

class MainActivity : AppCompatActivity() {

    val binding : ActivityMainBinding by lazy { ActivityMainBinding.inflate(layoutInflater) }
    var editstring : String = ""

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(binding.root)

        val checkfragment = intent.getStringExtra("fragment")

        if(checkfragment != null){
            if(checkfragment == "company"){
                editstring = intent.getStringExtra("editstring").toString()

                binding.bottomNavigationView.selectedItemId = R.id.company
                val fragment = FragmentCompany()
                val bundle = Bundle()
                bundle.putString("editstring", editstring)
                fragment.arguments = bundle
                supportFragmentManager
                    .beginTransaction()
                    .replace(binding.mainFrame.id, fragment)
                    .commitAllowingStateLoss()
            }else{
                editstring = intent.getStringExtra("editstring").toString()

                binding.bottomNavigationView.selectedItemId = R.id.product
                val fragment = FragmentProduct()
                val bundle = Bundle()
                bundle.putString("editstring", editstring)
                fragment.arguments = bundle
                supportFragmentManager
                    .beginTransaction()
                    .replace(binding.mainFrame.id, fragment)
                    .commitAllowingStateLoss()
            }
        }else{
            supportFragmentManager
                .beginTransaction()
                .replace(binding.mainFrame.id, FragmentHome())
                .commitAllowingStateLoss()

            binding.bottomNavigationView.selectedItemId = R.id.home
        }

        binding.bottomNavigationView.setOnItemSelectedListener { menuItem ->
            when (menuItem.itemId) {
                R.id.company -> {
                    supportFragmentManager
                        .beginTransaction()
                        .replace(binding.mainFrame.id, FragmentCompany())
                        .commitAllowingStateLoss()
                    true
                }
                R.id.quiz -> {
                    supportFragmentManager
                        .beginTransaction()
                        .replace(binding.mainFrame.id, FragmentQuiz())
                        .commitAllowingStateLoss()
                    true
                }
                R.id.home -> {
                    supportFragmentManager
                        .beginTransaction()
                        .replace(binding.mainFrame.id, FragmentHome())
                        .commitAllowingStateLoss()
                    true
                }
                R.id.product -> {
                    supportFragmentManager
                        .beginTransaction()
                        .replace(binding.mainFrame.id, FragmentProduct())
                        .commitAllowingStateLoss()
                    true
                }
                R.id.mypage -> {
                    supportFragmentManager
                        .beginTransaction()
                        .replace(binding.mainFrame.id, FragmentMypage())
                        .commitAllowingStateLoss()
                    true
                }
                else -> false
            }
        }
    }
}