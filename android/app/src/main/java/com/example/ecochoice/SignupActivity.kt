package com.example.ecochoice

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import com.example.ecochoice.databinding.ActivitySignupBinding

class SignupActivity : AppCompatActivity() {

    val binding : ActivitySignupBinding by lazy { ActivitySignupBinding.inflate(layoutInflater) }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(binding.root)
    }
}