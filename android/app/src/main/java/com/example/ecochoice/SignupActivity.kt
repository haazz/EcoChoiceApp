package com.example.ecochoice

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.text.Editable
import android.text.TextWatcher
import android.util.Log
import android.view.View
import android.widget.EditText
import android.widget.TextView
import android.widget.Toast
import com.example.ecochoice.databinding.ActivitySignupBinding
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory

class SignupActivity : AppCompatActivity() {

    val binding : ActivitySignupBinding by lazy { ActivitySignupBinding.inflate(layoutInflater) }
    private lateinit var pwchecktext : TextView
    private lateinit var pw : EditText
    private lateinit var pwcheck : EditText

    private val pwcheckwatcherListener = object : TextWatcher {

        override fun beforeTextChanged(s: CharSequence?, start: Int, count: Int, after: Int) {}

        override fun onTextChanged(s: CharSequence?, start: Int, before: Int, count: Int) {
            val inputText = s.toString()
            if (inputText.isEmpty()) {
                pwchecktext.visibility = View.INVISIBLE
            } else {
                pwchecktext.visibility = View.VISIBLE
                if (inputText == pw.text.toString()) {
                    pwchecktext.text = "비밀번호가 일치합니다."
                } else {
                    pwchecktext.text = "비밀번호가 일치하지 않습니다."
                }
            }
        }
        override fun afterTextChanged(s: Editable?) {}
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(binding.root)

        pwchecktext = binding.pwchecktext
        pw = binding.adEditPassword
        pwcheck = binding.adEditPwcheck

        pwcheck.addTextChangedListener(pwcheckwatcherListener)

        binding.adBtn.setOnClickListener {
            val retrofit = Retrofit.Builder()
                .baseUrl("http://3.35.39.186/")
                .addConverterFactory(GsonConverterFactory.create())
                .build()

            val apiService = retrofit.create(RetrofitService::class.java)

            val email = binding.adEditEmail.text.toString()
            val password = binding.adEditPassword.text.toString()
            val nickname = binding.adEditNick.text.toString()

            val signUpRequest = Signup(email, password, nickname)
            val call = apiService.signUp(signUpRequest)

            call.enqueue(object : Callback<com.example.ecochoice.Response> {
                override fun onResponse(call: Call<com.example.ecochoice.Response>, response: Response<com.example.ecochoice.Response>) {
                    if (response.isSuccessful) {
                        val apiResponse = response.body()
                        if(apiResponse?.Code == "0000"){
                            val intent = Intent(this@SignupActivity, LoginActivity::class.java)
                            startActivity(intent)
                            finish()
                        }
                        else if(apiResponse?.Code == "0001"){
                            Toast.makeText(this@SignupActivity, "회원가입에 실패했습니다.", Toast.LENGTH_SHORT).show()
                        }
                    } else {
                        Log.e("testapi", "Response failed: ${response.code()}")
                    }
                }

                override fun onFailure(call: Call<com.example.ecochoice.Response>, t: Throwable) {
                    val errorMessage = "Call Failed: ${t.message}"
                    Log.d("Retrofit", errorMessage)
                }
            })
        }
    }
}