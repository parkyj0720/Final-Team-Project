package com.example.boardca_app.ui.game;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.DialogFragment;

import com.example.boardca_app.R;
import com.google.android.material.floatingactionbutton.FloatingActionButton;

public class GameFragment extends DialogFragment {

    ViewGroup viewGroup;
    WebView webView;
    Uri uri;
    private FloatingActionButton fab_chat;

    public String nickname = "nickname";
    public String email = "email";
    public String id = "id";
    public String age = "age";
    public String mf = "mf";

    public String gameUrl = "http://182.213.18.164:8088/BoardCa/gameMainApp.do";
    public String chatUrl = "http://182.213.18.164:8088/BoardCa/index.jsp";
    public String str = "";

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater,
                             ViewGroup container, Bundle savedInstanceState) {

        viewGroup = (ViewGroup) inflater.inflate(R.layout.fragment_game, container, false);
        webView = (viewGroup).findViewById(R.id.game_web);

        if (getArguments() != null) {
            nickname = getArguments().getString("nickname");// 전달한 key 값
            email = getArguments().getString("email"); // 전달한 key 값
            id = getArguments().getString("id"); // 전달한 key 값
            age = getArguments().getString("age"); // 전달한 key 값
            mf = getArguments().getString("mf"); // 전달한 key 값
        }

        webView.getSettings().setJavaScriptEnabled(true);
        webView.setWebChromeClient(new WebChromeClient());
        webView.setWebViewClient(new WebViewClientClass());

        webView.loadUrl(gameUrl); //주소는 임시, 차후에 바꿀것.
        str = chatUrl;


        fab_chat = (FloatingActionButton) viewGroup.findViewById(R.id.fab_chat);
        fab_chat.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                webView.loadUrl(str);
                if(str.equals(gameUrl)){
                    str = chatUrl;
                }else if(str.equals(chatUrl)){
                    str = gameUrl;
                }
            }
        });

        return viewGroup;
    }

    private class WebViewClientClass extends WebViewClient {

        @Override
        public boolean shouldOverrideUrlLoading(WebView view, String url) {
            Log.d("check URL", url);
            view.loadUrl(url);
            return true;
        }
    }
}
