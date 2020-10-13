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

    public String nickname = "nickname";
    public String email = "email";
    public String id = "id";
    public String age = "age";
    public String mf = "mf";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_chat);

        if (getIntent().getStringExtra("nickname") != null)
            nickname = getIntent().getStringExtra("nickname");
        if (getIntent().getStringExtra("email") != null)
            email = getIntent().getStringExtra("email");
        if (getIntent().getStringExtra("id") != null)
            id = getIntent().getStringExtra("id");
        if (getIntent().getStringExtra("age") != null)
            age = getIntent().getStringExtra("age");
        if (getIntent().getStringExtra("mf") != null)
            mf = getIntent().getStringExtra("mf");

        Log.v("id >>>>>>>>>>", id);
        Log.v("nickname >>>>>>>>>>", nickname);

        webView = findViewById(R.id.chat_web);
        webView.getSettings().setJavaScriptEnabled(true);
        webView.setWebChromeClient(new WebChromeClient());
        webView.loadUrl("http://192.168.219.125:8088/BoardCa/index.jsp?id="+id+"&nickname="+nickname);

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
