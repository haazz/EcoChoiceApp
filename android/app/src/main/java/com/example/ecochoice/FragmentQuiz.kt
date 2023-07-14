package com.example.ecochoice

import android.content.Context
import android.content.SharedPreferences
import android.os.Bundle
import android.util.Log
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Button
import android.widget.Toast
import com.example.ecochoice.databinding.FragmentQuizBinding
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory
import java.util.*

class FragmentQuiz : Fragment() {

    private val binding: FragmentQuizBinding by lazy {
        FragmentQuizBinding.inflate(layoutInflater)
    }

    private var quizlist = listOf<Quiz>()
    private var range = 0
    private var correct : String = ""

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {

        val retrofit = Retrofit.Builder()
            .baseUrl("http://3.35.39.186/")
            .addConverterFactory(GsonConverterFactory.create())
            .build()

        binding.QLook.setOnClickListener {
            val apiService = retrofit.create(RetrofitService::class.java)

            val call = apiService.quiz()

            call.enqueue(object : Callback<List<Quiz>> {
                override fun onResponse(call: Call<List<Quiz>>, response: Response<List<Quiz>>) {
                    if (response.isSuccessful) {
                        val quizList = response.body()
                        if (quizList != null) {
                            binding.QBtn.visibility = View.VISIBLE
                            quizlist = quizList
                            range = quizList.size
                            val num = randomquiz()
                            binding.quizText.text = "Q.${quizlist[num].question}"
                            correct = quizlist[num].Ok.toString()
                            val stringList: MutableList<String> = mutableListOf()
                            stringList.add(quizlist[num].Ok.toString())
                            stringList.add(quizlist[num].X1.toString())
                            stringList.add(quizlist[num].X2.toString())
                            stringList.add(quizlist[num].X3.toString())
                            val Qnum = randomquestion()
                            binding.Q1.text = stringList[Qnum]
                            binding.Q2.text = stringList[(Qnum+1)%4]
                            binding.Q3.text = stringList[(Qnum+2)%4]
                            binding.Q4.text = stringList[(Qnum+3)%4]
                        }
                    } else {
                        Log.e("RetrofitService", "Response failed: ${response.code()}")
                    }
                }

                override fun onFailure(call: Call<List<Quiz>>, t: Throwable) {
                    val errorMessage = "Call Failed: ${t.message}"
                    Log.d("RetrofitService", errorMessage)
                }
            })
        }

        binding.QBtn.setOnClickListener {
            if(binding.Q1.isChecked){
                check(binding.Q1.text.toString())
                binding.Q1.isChecked = false
            }
            else if(binding.Q2.isChecked){
                check(binding.Q2.text.toString())
                binding.Q2.isChecked = false
            }
            else if(binding.Q3.isChecked){
                check(binding.Q3.text.toString())
                binding.Q3.isChecked = false
            }
            else{
                check(binding.Q4.text.toString())
                binding.Q4.isChecked = false
            }
        }
        return binding.root
    }

    fun randomquiz(): Int {
        return Random().nextInt(range)
    }
    fun randomquestion(): Int {
        return Random().nextInt(4)
    }
    fun check(text : String){
        if(text == correct){
            Toast.makeText(requireContext(), "정답입니다!", Toast.LENGTH_SHORT).show()
        }
        else{
            Toast.makeText(requireContext(), "오답입니다!", Toast.LENGTH_SHORT).show()
        }
        binding.QBtn.visibility = View.GONE
        binding.quizText.text = "문제"
        binding.Q1.text = "보기 1"
        binding.Q2.text = "보기 2"
        binding.Q3.text = "보기 3"
        binding.Q4.text = "보기 4"
    }
}