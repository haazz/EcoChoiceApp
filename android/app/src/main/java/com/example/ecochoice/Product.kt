package com.example.ecochoice

import com.google.gson.annotations.SerializedName

data class Product(
    @SerializedName("company_name")
    val companyname: String,
    @SerializedName("product_code")
    val productcode: String,
    @SerializedName("product_name")
    val productname: String,
    @SerializedName("product_url")
    val producturl: String
)
