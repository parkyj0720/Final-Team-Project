package com.example.boardca_app.ui.recipe;

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

public class RecipeFragment extends Fragment {

    ViewGroup viewGroup;
    WebView webView;

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater,
                             ViewGroup container, Bundle savedInstanceState) {


        viewGroup = (ViewGroup) inflater.inflate(R.layout.fragment_recipe, container, false);
        webView = (viewGroup).findViewById(R.id.ricipe_web);

        webView.getSettings().setJavaScriptEnabled(true);
        webView.setWebChromeClient(new WebChromeClient());
        webView.setWebViewClient(new RecipeFragment.WebViewClientClass());
        webView.loadUrl("http://192.168.219.100:8088/BoardCa/cListAllApp.do"); //주소는 임시, 차후에 바꿀것.

//        Intent intent = new Intent(Intent.ACTION_VIEW, Uri.parse("http://172.30.1.17:8088/BoardCa/signIn.do"));
//        startActivity(intent);

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