package com.example.boardca_app.ui.game;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.util.Log;
import android.view.ViewGroup;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;

import com.example.boardca_app.R;

public class chatActivity extends AppCompatActivity {

    ViewGroup viewGroup;
    WebView webView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_chat);

        webView = findViewById(R.id.chat_web);
        webView.loadUrl("http://192.168.219.107:8088/BoardCa/index.jsp");

    }

    public class WebViewClientClass extends WebViewClient {

        @Override
        public boolean shouldOverrideUrlLoading(WebView view, String url) {
            Log.d("check URL", url);
            view.loadUrl(url);
            return true;
        }
    }
}
