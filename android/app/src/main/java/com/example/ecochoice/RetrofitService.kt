package com.example.ecochoice

import retrofit2.Call
import retrofit2.http.GET
import retrofit2.http.Headers

interface RetrofitService {

    @Headers("Authorization: Api-Key ${BuildConfig.API_KEY}")
    @GET("/companies")
    fun companies(): Call<List<Company>>
}