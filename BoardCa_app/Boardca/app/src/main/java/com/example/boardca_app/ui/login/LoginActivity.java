package com.example.boardca_app.ui.login;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProviders;

import com.example.boardca_app.MainActivity;
import com.example.boardca_app.R;
import com.example.boardca_app.data.PreferenceManager;
import com.example.boardca_app.ui.signup.TermsActivity;

public class LoginActivity extends AppCompatActivity {

    private LoginViewModel loginViewModel;
    private Context mContext;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);
        mContext = this; //필수!


        //로그인창 액션바 숨기기
        ActionBar actionBar = getSupportActionBar();
        actionBar.hide();


        loginViewModel = ViewModelProviders.of(this, new LoginViewModelFactory())
                .get(LoginViewModel.class);

        final EditText usernameEditText = findViewById(R.id.et_username);
        final EditText passwordEditText = findViewById(R.id.et_password);
        final Button loginButton = findViewById(R.id.login);
        final ProgressBar loadingProgressBar = findViewById(R.id.loading);
        final CheckBox cb_save = (CheckBox) findViewById(R.id.cb_save);
        final CheckBox auto_save = (CheckBox) findViewById(R.id.auto_save);

        //자동로그인
        SharedPreferences auto = getSharedPreferences("auto", Activity.MODE_PRIVATE); //자동고르인
        String loginId = auto.getString("inputId",null);
        String loginPwd = auto.getString("inputPwd",null);

        //ID창내 엔터방지.
        usernameEditText.setOnKeyListener(new View.OnKeyListener() {
            @Override
            public boolean onKey(View v, int keyCode, KeyEvent event) {
                // TODO Auto-generated method stub
                if(keyCode == event.KEYCODE_ENTER)
                {
                    return true;
                }
                return false;
            }
        });

        //회원가입 이동
        TextView txt = (TextView) findViewById(R.id.signup_next_text);
        txt.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(getApplicationContext(), TermsActivity.class);
                //intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TASK); //새로운 테스크에 작동시키기.
                startActivity(intent);
                overridePendingTransition(0,0);
                finish();
            }
        });


        //아이디 저장 체크
        boolean boo = PreferenceManager.getBoolean(mContext,"check");
        if (boo) {
            //저장된 유저네임과 비밀번호를 계속 세팅
            usernameEditText.setText(PreferenceManager.getString(mContext, "username"));
            passwordEditText.setText(PreferenceManager.getString(mContext, "password"));
            cb_save.setChecked(true); //체크박스는 고정셋팅
        }

        //로그인 버튼을 눌렀을때 입력된 데이터 저장.
        loginButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                PreferenceManager.setString(mContext, "username", usernameEditText.getText().toString());
                PreferenceManager.setString(mContext, "password", passwordEditText.getText().toString());

                String checkID = PreferenceManager.getString(mContext, "username");
                String checkPW = PreferenceManager.getString(mContext, "password");
            }
        });

        //아이디 저장-체크박스 체크 유무에 따른 동작 구현.
        cb_save.setOnClickListener(new CheckBox.OnClickListener(){
            @Override
            public void onClick(View view) {
                if(((CheckBox)view).isChecked()){ //체크박스에 체크가 되어있다면,
                    PreferenceManager.setString(mContext, "username", usernameEditText.getText().toString());
                    PreferenceManager.setString(mContext, "password", passwordEditText.getText().toString());
                    PreferenceManager.setBoolean(mContext, "check", cb_save.isChecked());
                }else { //체크박스가 해제 되어있다면.
                    PreferenceManager.setBoolean(mContext, "check", cb_save.isChecked());
                    PreferenceManager.clear(mContext);
                }
            }
        });
        //자동 로그인 - 체크박스 체크 유무에 따른 동작 구현.
        auto_save.setOnClickListener(new CheckBox.OnClickListener(){
            @Override
            public void onClick(View view) {
                SharedPreferences auto = getSharedPreferences("auto", Activity.MODE_PRIVATE);
                SharedPreferences.Editor autoLogin = auto.edit();
                autoLogin.putString("inputUsername", usernameEditText.getText().toString());
                autoLogin.putString("inputPwd", passwordEditText.getText().toString());


                autoLogin.commit();
            }
        });


        loginViewModel.getLoginFormState().observe(this, new Observer<LoginFormState>() {
            @Override
            public void onChanged(@Nullable LoginFormState loginFormState) {
                if (loginFormState == null) {
                    return;
                }
                loginButton.setEnabled(loginFormState.isDataValid());
                if (loginFormState.getUsernameError() != null) {
                    usernameEditText.setError(getString(loginFormState.getUsernameError()));
                }
                if (loginFormState.getPasswordError() != null) {
                    passwordEditText.setError(getString(loginFormState.getPasswordError()));
                }
            }
        });

        loginViewModel.getLoginResult().observe(this, new Observer<LoginResult>() {
            @Override
            public void onChanged(@Nullable LoginResult loginResult) {
                if (loginResult == null) {
                    return;
                }
                loadingProgressBar.setVisibility(View.GONE);
                if (loginResult.getError() != null) {
                    showLoginFailed(loginResult.getError());
                }
                if (loginResult.getSuccess() != null) {
                    updateUiWithUser(loginResult.getSuccess());
                }
                setResult(Activity.RESULT_OK);

                Intent intent = new Intent(getApplicationContext(), MainActivity.class);
                startActivity(intent);
                overridePendingTransition(0,0);

                //Complete and destroy login activity once successful
                finish();
            }
        });

        TextWatcher afterTextChangedListener = new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
                // ignore
            }

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {
                // ignore
            }

            @Override
            public void afterTextChanged(Editable s) {
                loginViewModel.loginDataChanged(usernameEditText.getText().toString(),
                        passwordEditText.getText().toString());
            }
        };
        usernameEditText.addTextChangedListener(afterTextChangedListener);
        passwordEditText.addTextChangedListener(afterTextChangedListener);
        passwordEditText.setOnEditorActionListener(new TextView.OnEditorActionListener() {

            @Override
            public boolean onEditorAction(TextView v, int actionId, KeyEvent event) {
                if (actionId == EditorInfo.IME_ACTION_DONE) {
                    loginViewModel.login(usernameEditText.getText().toString(),
                            passwordEditText.getText().toString());
                }
                return false;
            }
        });

        loginButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                loadingProgressBar.setVisibility(View.VISIBLE);
                loginViewModel.login(usernameEditText.getText().toString(),
                        passwordEditText.getText().toString());
            }
        });

    }




    private void updateUiWithUser(LoggedInUserView model) {
        String welcome = getString(R.string.welcome) + model.getDisplayName();
        // TODO : initiate successful logged in experience
        Toast.makeText(getApplicationContext(), welcome, Toast.LENGTH_LONG).show();

    }

    private void showLoginFailed(@StringRes Integer errorString) {
        Toast.makeText(getApplicationContext(), errorString, Toast.LENGTH_SHORT).show();
    }


}
