package com.example.ecochoice

import com.google.gson.annotations.SerializedName

data class Signin(
    @SerializedName("useremail")
    val Useremail: String,
    @SerializedName("userpw")
    val Userpassword: String
)
