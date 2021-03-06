package com.example.boardca_app.ui.signup;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;

import com.example.boardca_app.R;
import com.example.boardca_app.ui.login.LoginActivity;

//1번
public class TermsActivity extends AppCompatActivity {

        @Override
        protected void onCreate(Bundle savedInstanceState) {
            super.onCreate(savedInstanceState);
            setContentView(R.layout.activity_terms);

            getWindow().setWindowAnimations(0); //뷰이벤트없애기

            Button signup_exit_btn = findViewById(R.id.signup_exit_btn);

            Button button = (Button)findViewById(R.id.consent_btn);
            button.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    Intent intent = new Intent(getApplicationContext(),SignUpActivity.class);
                    //intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TASK); //새로운 테스크에 작동시키기.
                    startActivity(intent);
                    overridePendingTransition(0,0);
                    finish();
                }
            });

            signup_exit_btn.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    Intent intent = new Intent(getApplicationContext(), LoginActivity.class);
                    //intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TASK); //새로운 테스크에 작동시키기.
                    startActivity(intent);
                    overridePendingTransition(0,0);
                    finish();
                }
            });
        }


    }