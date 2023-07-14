package com.example.ecochoice

import retrofit2.Call
import retrofit2.http.Body
import retrofit2.http.GET
import retrofit2.http.Headers
import retrofit2.http.POST

interface RetrofitService {

    @Headers("Authorization: Api-Key ${BuildConfig.API_KEY}")
    @GET("/companies")
    fun companies(): Call<List<Company>>

    @Headers("Authorization: Api-Key ${BuildConfig.API_KEY}")
    @POST("/app_signup")
    fun signUp(@Body request: Signup): Call<Response>

    @Headers("Authorization: Api-Key ${BuildConfig.API_KEY}")
    @POST("/app_login")
    fun signIn(@Body request: Signin): Call<Response>

    @Headers("Authorization: Api-Key ${BuildConfig.API_KEY}")
    @GET("/quiz")
    fun quiz(): Call<List<Quiz>>

    @Headers("Authorization: Api-Key ${BuildConfig.API_KEY}")
    @GET("/product")
    fun product(): Call<List<Product>>
}