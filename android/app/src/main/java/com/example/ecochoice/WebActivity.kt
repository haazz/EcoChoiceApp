package com.example.ecochoice

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.webkit.WebViewClient
import com.example.ecochoice.databinding.ActivityWebBinding

class WebActivity : AppCompatActivity() {

    val binding : ActivityWebBinding by lazy { ActivityWebBinding.inflate(layoutInflater) }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(binding.root)

        val url = intent.getStringExtra("url")
        if(url != null){
            val webview = binding.webview
            webview.settings.javaScriptEnabled = true
            webview.webViewClient = WebViewClient()
            webview.loadUrl(url)
        }
    }
}