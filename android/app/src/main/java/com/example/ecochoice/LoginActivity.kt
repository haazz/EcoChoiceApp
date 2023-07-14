package com.example.ecochoice

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import com.example.ecochoice.databinding.ActivityLoginBinding

class LoginActivity : AppCompatActivity() {

    val binding : ActivityLoginBinding by lazy { ActivityLoginBinding.inflate(layoutInflater) }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(binding.root)


    }
}