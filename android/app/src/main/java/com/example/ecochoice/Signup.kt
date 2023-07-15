package com.example.ecochoice

import com.google.gson.annotations.SerializedName

data class Signup(
    @SerializedName("useremail")
    val Useremail: String,
    @SerializedName("userpw")
    val Userpassword: String,
    @SerializedName("username")
    val Usernickname: String
)
