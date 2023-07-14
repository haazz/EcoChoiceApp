package com.example.ecochoice

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import com.example.ecochoice.databinding.ActivityMainBinding

class MainActivity : AppCompatActivity() {

    val binding : ActivityMainBinding by lazy { ActivityMainBinding.inflate(layoutInflater) }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(binding.root)

        supportFragmentManager
            .beginTransaction()
            .replace(binding.mainFrame.id, FragmentHome())
            .commitAllowingStateLoss()

        binding.bottomNavigationView.selectedItemId = R.id.home

        binding.bottomNavigationView.setOnItemSelectedListener { menuItem ->
            when (menuItem.itemId) {
                R.id.company -> {
                    supportFragmentManager
                        .beginTransaction()
                        .replace(binding.mainFrame.id, FragmentCompany())
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

                else -> false
            }
        }
    }
}