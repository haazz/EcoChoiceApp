package com.example.ecochoice

import com.google.gson.annotations.SerializedName

data class Quiz(
    @SerializedName("id")
    val quizid : Int?,
    @SerializedName("question")
    val question : String?,
    @SerializedName("correct_answer")
    val Ok : String?,
    @SerializedName("wrong_answer1")
    val X1 : String?,
    @SerializedName("wrong_answer2")
    val X2 : String?,
    @SerializedName("wrong_answer3")
    val X3 : String?
)
