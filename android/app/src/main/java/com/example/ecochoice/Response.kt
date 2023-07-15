package com.example.ecochoice

import com.google.gson.annotations.SerializedName

data class Response(
    @SerializedName("code")
    val Code : String?,
    @SerializedName("username")
    val username : String?
)
