package com.example.boardca_app.ui.community;

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
import androidx.fragment.app.Fragment;

import com.example.boardca_app.R;

public class FragmainBoard extends Fragment {


    private ViewGroup viewGroup;
    private WebView webView;
    public String MEM_ID = "MEM_ID";

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {

        viewGroup = (ViewGroup) inflater.inflate(R.layout.comm_mainboard, container, false);
        webView = (viewGroup).findViewById(R.id.comm_main_webView);

        if(getArguments().getString("id") != null) {
            MEM_ID = getArguments().getString("id");// 전달한 key 값
            Log.e("bbbbbbbb", MEM_ID);
        }

        webView.getSettings().setJavaScriptEnabled(true);
        webView.setWebChromeClient(new WebChromeClient());
        webView.setWebViewClient(new WebViewClientClass());

        webView.loadUrl("http://192.168.219.100:8088/BoardCa/App_list.do?list=1&MEM_ID=" + MEM_ID); //주소는 임시, 차후에 바꿀것.

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

