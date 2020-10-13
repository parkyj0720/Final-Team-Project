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

        webView.loadUrl("http://192.168.219.125:8088/BoardCa/gameMainApp.do"); //주소는 임시, 차후에 바꿀것.


        fab_chat = (FloatingActionButton) viewGroup.findViewById(R.id.fab_chat);
        fab_chat.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                //Intent intent = new Intent(Intent.ACTION_VIEW, Uri.parse("http://192.168.219.107:8088/BoardCa/index.jsp"));
                Intent i = new Intent(getActivity(), chatActivity.class);

                i.putExtra("nickname", nickname);
                i.putExtra("email", email);
                i.putExtra("id", id);
                i.putExtra("age", age);
                i.putExtra("mf", mf);

                startActivity(i);
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
