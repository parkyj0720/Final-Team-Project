package com.example.boardca_app.ui.web_view;

import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import android.view.Window;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.example.boardca_app.R;

public class Web_Fragment extends AppCompatActivity {

    private WebView webView; //웹뷰선언
    private WebSettings webSettings; //웹뷰세팅

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_web__fragment);

        //웹뷰 시작
        webView = (WebView)findViewById(R.id.webView);

        // 웹 세팅 작업하기
        webSettings = webView.getSettings(); //세부세팅 등록
        webSettings.setJavaScriptEnabled(true); //웹페이지 자바스크립트 허용여부
        webSettings.setSupportMultipleWindows(false); //새창 띄우기 허용여부
        webSettings.setJavaScriptCanOpenWindowsAutomatically(true); //자바스크립트 새창 띄우기(멀티뷰) 허용여부
        webSettings.setLoadWithOverviewMode(true); //메타 태그 허용 여부
        webSettings.setSupportZoom(true); //화면 줌 허용 여부
        webSettings.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.SINGLE_COLUMN); //컨텐츠 사이즈 맞추기
        webSettings.setCacheMode(WebSettings.LOAD_NO_CACHE); // 브라우저 캐시 허용 여부
        webSettings.setDomStorageEnabled(true);//로컬 저장소 허용 여부

        webSettings.setAllowUniversalAccessFromFileURLs(true);
        webSettings.setSaveFormData(true);
        webSettings.setSavePassword(true);
        webSettings.setUseWideViewPort(true);

        //리다이렉트할때 브라우저 열리는 것을 방지.
        webView.setWebViewClient(new WebViewClient()); //클릭시 새창 안뜨게
        webView.setWebChromeClient(new WebChromeClient());

        // 웹뷰 띄우기. 앱에서 표시할 url 입력
        webView.loadUrl("https://m.naver.com");
    }

    //폰의 뒤로가기 버튼의 동작 입력
    @Override
    public void onBackPressed() {
        if(webView.canGoBack()) {
            webView.goBack();
        } else {
            super.onBackPressed();
        }
    }
}
