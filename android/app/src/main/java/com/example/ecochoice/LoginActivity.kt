package com.example.ecochoice

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.text.Spannable
import android.text.SpannableStringBuilder
import android.text.method.LinkMovementMethod
import android.text.style.ClickableSpan
import android.util.Log
import android.view.View
import android.widget.Toast
import com.example.ecochoice.databinding.ActivityLoginBinding
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory

class LoginActivity : AppCompatActivity() {

    val binding : ActivityLoginBinding by lazy { ActivityLoginBinding.inflate(layoutInflater) }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(binding.root)

        binding.alBtn.setOnClickListener {
            val retrofit = Retrofit.Builder()
                .baseUrl("http://3.35.39.186/")
                .addConverterFactory(GsonConverterFactory.create())
                .build()

            val apiService = retrofit.create(RetrofitService::class.java)

            val email = binding.alEmail.text.toString()
            val password = binding.alPassword.text.toString()

            val signinRequest = Signin(email, password)
            val call = apiService.signIn(signinRequest)

            call.enqueue(object : Callback<Response> {
                override fun onResponse(call: Call<Response>, response: retrofit2.Response<Response>) {
                    if (response.isSuccessful) {
                        val apiResponse = response.body()
                        if(apiResponse?.Code == "0000"){
                            val intent = Intent(this@LoginActivity, MainActivity::class.java)
                            startActivity(intent)
                            finish()
                        }
                        else if(apiResponse?.Code == "0001"){
                            Toast.makeText(this@LoginActivity, "로그인에 실패했습니다.", Toast.LENGTH_SHORT).show()
                        }
                    } else {
                        Log.e("testapi", "Response failed: ${response.code()}")
                    }
                }

                override fun onFailure(call: Call<Response>, t: Throwable) {
                    val errorMessage = "Call Failed: ${t.message}"
                    Log.d("Retrofit", errorMessage)
                }
            })
        }

        val Singup = binding.alTextSignup
        val spanup = SpannableStringBuilder("회원가입")
        val clickSingup = object : ClickableSpan() {
            override fun onClick(view: View) {
                val intent = Intent(view.context, SignupActivity::class.java)
                view.context.startActivity(intent)
            }
        }

        spanup.setSpan(clickSingup, 0, spanup.length, Spannable.SPAN_EXCLUSIVE_EXCLUSIVE)
        Singup.text = spanup
        Singup.movementMethod = LinkMovementMethod.getInstance()
    }
}