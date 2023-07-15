package com.example.ecochoice

import com.google.gson.annotations.SerializedName

data class Company(
    @SerializedName("company_name")
    val companyname: String,
    @SerializedName("esg_rank_2022")
    val esgrank2022: String,
    @SerializedName("e_rank_2022")
    val erank2022: String,
    @SerializedName("s_rank_2022")
    val srank2022: String,
    @SerializedName("g_rank_2022")
    val grank2022: String,
    @SerializedName("esg_rank_2021")
    val esgrank2021: String,
    @SerializedName("e_rank_2021")
    val erank2021: String,
    @SerializedName("s_rank_2021")
    val srank2021: String,
    @SerializedName("g_rank_2021")
    val grank2021: String,
    @SerializedName("esg_rank_2020")
    val esgrank2020: String,
    @SerializedName("e_rank_2020")
    val erank2020: String,
    @SerializedName("s_rank_2020")
    val srank2020: String,
    @SerializedName("g_rank_2020")
    val grank2020: String
)
