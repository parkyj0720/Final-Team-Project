package com.example.boardca_app.ui.web_view;

import android.os.Bundle;
import android.os.PersistableBundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelProviders;

import com.example.boardca_app.R;
import com.example.boardca_app.ui.tools.ToolsViewModel;


public class Web_Fragment extends Fragment {


    public View onCreateView(@NonNull LayoutInflater inflater,
                             ViewGroup container, Bundle savedInstanceState) {

//       Intent intent = new Intent(Intent.ACTION_VIEW, Uri.parse("http://192.168.219.113:8088/BoardCa/signIn.do"));
//        startActivity(intent);

        View root = inflater.inflate(R.layout.activity_web, container, false);
        WebView w = root.findViewById(R.id.web01);

        w.getSettings().setJavaScriptEnabled(true);

//        w.getSettings().setAllowContentAccess(true);
//        w.getSettings().setDomStorageEnabled(true);
//        w.getSettings().setAppCacheEnabled(true);
//        w.getSettings().setUseWideViewPort(true);

        w.setWebChromeClient(new WebChromeClient());
        w.setWebViewClient(new WebViewClientClass());
        w.loadUrl("http://192.168.219.113:8088/BoardCa/signIn.do");
        return root;

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
