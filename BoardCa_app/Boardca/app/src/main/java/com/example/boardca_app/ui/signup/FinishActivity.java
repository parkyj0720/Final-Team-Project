package com.example.boardca_app.ui.signup;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageButton;

import androidx.annotation.Nullable;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;

import com.example.boardca_app.R;
import com.example.boardca_app.ui.login.LoginActivity;

//4번
public class FinishActivity extends AppCompatActivity {


    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        setContentView(R.layout.activity_finish);

        //액션바 숨기기
        ActionBar actionBar = getSupportActionBar();
        actionBar.hide();

        getWindow().setWindowAnimations(0); //뷰이벤트없애기

        ImageButton button = (ImageButton) findViewById(R.id.login_next_btn);
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(getApplicationContext(), LoginActivity.class);
                //intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TASK); //새로운 테스크에 작동시키기.
                startActivity(intent);
                overridePendingTransition(0,0);
            }
        });


    }
}

