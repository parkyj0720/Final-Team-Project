package com.example.boardca_app.ui.signup;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;

import com.example.boardca_app.R;

//1번
public class TermsActivity extends AppCompatActivity {

        @Override
        protected void onCreate(Bundle savedInstanceState) {
            super.onCreate(savedInstanceState);
            setContentView(R.layout.activity_terms);

            //액션바 숨기기
            ActionBar actionBar = getSupportActionBar();
            actionBar.hide();

            getWindow().setWindowAnimations(0); //뷰이벤트없애기

            Button button = (Button)findViewById(R.id.consent_btn);
            button.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    Intent intent = new Intent(getApplicationContext(),CertifiedActivity.class);
                    //intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TASK); //새로운 테스크에 작동시키기.
                    startActivity(intent);
                    overridePendingTransition(0,0);
                }
            });


        }


    }