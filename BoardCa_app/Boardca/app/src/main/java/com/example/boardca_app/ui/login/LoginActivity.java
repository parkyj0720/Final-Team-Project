package com.example.boardca_app.ui.login;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Base64;
import android.util.Log;
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
import com.example.boardca_app.ui.community.MakeActivity;
import com.example.boardca_app.ui.signup.TermsActivity;
import com.kakao.auth.ApiErrorCode;
import com.kakao.auth.ApprovalType;
import com.kakao.auth.AuthType;
import com.kakao.auth.IApplicationConfig;
import com.kakao.auth.ISessionCallback;
import com.kakao.auth.ISessionConfig;
import com.kakao.auth.KakaoAdapter;
import com.kakao.auth.KakaoSDK;
import com.kakao.auth.Session;
import com.kakao.network.ErrorResult;
import com.kakao.usermgmt.UserManagement;
import com.kakao.usermgmt.callback.LogoutResponseCallback;
import com.kakao.usermgmt.callback.MeV2ResponseCallback;
import com.kakao.usermgmt.response.MeV2Response;
import com.kakao.usermgmt.response.model.AgeRange;
import com.kakao.usermgmt.response.model.Gender;
import com.kakao.usermgmt.response.model.UserAccount;
import com.kakao.util.OptionalBoolean;
import com.kakao.util.exception.KakaoException;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.MessageDigest;

public class LoginActivity extends AppCompatActivity {

    private LoginViewModel loginViewModel;
    private Context mContext;
    private SessionCallback sessionCallback;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);
        mContext = this; //필수!

        loginViewModel = ViewModelProviders.of(this, new LoginViewModelFactory())
                .get(LoginViewModel.class);

        final EditText usernameEditText = findViewById(R.id.et_username);
        final EditText passwordEditText = findViewById(R.id.et_password);
        final Button loginButton = findViewById(R.id.login);
        final ProgressBar loadingProgressBar = findViewById(R.id.loading);
        final CheckBox cb_save = (CheckBox) findViewById(R.id.cb_save);
        final CheckBox auto_save = (CheckBox) findViewById(R.id.auto_save);

        sessionCallback = new SessionCallback();
        Session.getCurrentSession().addCallback(sessionCallback);
        Session.getCurrentSession().checkAndImplicitOpen();
        sessionCallback.getAppKeyHash();

        //자동로그인
        SharedPreferences auto = getSharedPreferences("auto", Activity.MODE_PRIVATE); //자동고르인
        String loginId = auto.getString("inputId", null);
        String loginPwd = auto.getString("inputPwd", null);

        //ID창내 엔터방지.
        usernameEditText.setOnKeyListener(new View.OnKeyListener() {
            @Override
            public boolean onKey(View v, int keyCode, KeyEvent event) {
                // TODO Auto-generated method stub
                if (event.getAction() == KeyEvent.ACTION_DOWN) {
                    if (keyCode == event.KEYCODE_ENTER) {
                        return true;
                    }
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
                overridePendingTransition(0, 0);
                finish();
            }
        });


        //아이디 저장 체크
        boolean boo = PreferenceManager.getBoolean(mContext, "check");
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
        cb_save.setOnClickListener(new CheckBox.OnClickListener() {
            @Override
            public void onClick(View view) {
                if (((CheckBox) view).isChecked()) { //체크박스에 체크가 되어있다면,
                    PreferenceManager.setString(mContext, "username", usernameEditText.getText().toString());
                    PreferenceManager.setString(mContext, "password", passwordEditText.getText().toString());
                    PreferenceManager.setBoolean(mContext, "check", cb_save.isChecked());
                } else { //체크박스가 해제 되어있다면.
                    PreferenceManager.setBoolean(mContext, "check", cb_save.isChecked());
                    PreferenceManager.clear(mContext);
                }
            }
        });
        //자동 로그인 - 체크박스 체크 유무에 따른 동작 구현.
        auto_save.setOnClickListener(new CheckBox.OnClickListener() {
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
                overridePendingTransition(0, 0);

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
                String id = usernameEditText.getText() + "";
                String pw = passwordEditText.getText() + "";

                String result = "false";
                try {
                    IdPw idpw = new IdPw();
                    result = idpw.execute(id, pw).get();
                    Log.i("리턴 값", result);
                } catch (Exception e) {

                }

                if (result.equals("true")) {
                    Toast.makeText(LoginActivity.this, id + "님! 로그인 성공!", Toast.LENGTH_SHORT).show();
                    Intent intent = new Intent(getApplicationContext(), MainActivity.class);
                    intent.putExtra("BRD_WRT_ID", usernameEditText.getText() + "");
                    //intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TASK); //새로운 테스크에 작동시키기.
                    startActivity(intent);
                    overridePendingTransition(0, 0);
                    finish();
                } else {
                    Toast.makeText(LoginActivity.this, "로그인 실패! 입력하신 정보를 확인해주세요.", Toast.LENGTH_SHORT).show();
                }
//                loadingProgressBar.setVisibility(View.VISIBLE);
//                loginViewModel.login(usernameEditText.getText().toString(),
//                        passwordEditText.getText().toString());
            }
        });

    }

    private void updateUiWithUser(LoggedInUserView model) {
        String welcome = getString(R.string.welcome) + model.getDisplayName();
        // TODO : initiate successful logged in experience
        Toast.makeText(getApplicationContext(), welcome, Toast.LENGTH_LONG).show();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        Session.getCurrentSession().removeCallback(sessionCallback);
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (Session.getCurrentSession().handleActivityResult(requestCode, resultCode, data)) {
            super.onActivityResult(requestCode, resultCode, data);
            return;
        }
    }

    private void showLoginFailed(@StringRes Integer errorString) {
        Toast.makeText(getApplicationContext(), errorString, Toast.LENGTH_SHORT).show();
    }


    //kakao
    private class SessionCallback implements ISessionCallback {

        @Override
        public void onSessionOpened() {
            //로그인 세션이 열렸을 때.
            UserManagement.getInstance().me(new MeV2ResponseCallback() {
                @Override
                public void onFailure(ErrorResult errorResult) {
                    int result = errorResult.getErrorCode();

                    if (result == ApiErrorCode.CLIENT_ERROR_CODE) {
                        Toast.makeText(getApplicationContext(), "네트워크 연결이 불안정합니다. 다시 시도해 주세요.", Toast.LENGTH_SHORT).show();
                        finish();
                    } else {
                        Toast.makeText(getApplicationContext(), "로그인 도중 오류가 발생했습니다: " + errorResult.getErrorMessage(), Toast.LENGTH_SHORT).show();
                    }
                }

                @Override
                public void onSessionClosed(ErrorResult errorResult) {
                    Toast.makeText(getApplicationContext(), "세션이 닫혔습니다. 다시 시도해 주세요: " + errorResult.getErrorMessage(), Toast.LENGTH_SHORT).show();
                }

                @Override
                public void onSuccess(MeV2Response result) {

                    String MEM_NICKNAME;
                    if (result.getNickname() != null) {
                        MEM_NICKNAME = result.getNickname();
                    } else {
                        MEM_NICKNAME = "";
                    }

                    String MEM_EMAIL;
                    if (result.getKakaoAccount().getEmail() != null) {
                        MEM_EMAIL = result.getKakaoAccount().getEmail();
                    } else {
                        MEM_EMAIL = "";
                    }

                    AgeRange ageRange;
                    String MEM_AGE_GROUP;
                    if (result.getKakaoAccount().getAgeRange() != null) {
                        ageRange = result.getKakaoAccount().getAgeRange();

                        switch (ageRange) {
                            case AGE_20_29:
                                MEM_AGE_GROUP = "20대";
                                break;
                            case AGE_30_39:
                                MEM_AGE_GROUP = "30대";
                                break;
                            case AGE_40_49:
                                MEM_AGE_GROUP = "40대";
                                break;
                            case AGE_50_59:
                            case AGE_60_69:
                            case AGE_70_79:
                            case AGE_80_89:
                            case AGE_90_ABOVE:
                                MEM_AGE_GROUP = "50대 이상";
                                break;
                            case AGE_RANGE_UNKNOWN:
                                MEM_AGE_GROUP = "비공개";
                                break;
                            default:
                                MEM_AGE_GROUP = "음주는 19세부터!!!";
                        }
                    } else {
                        MEM_AGE_GROUP = "";
                    }


                    String gender;
                    String MEM_GENDER;
                    if (result.getKakaoAccount().getGender() != null) {
                        gender = result.getKakaoAccount().getGender() + "";
                        if (gender.equals("MALE")) {
                            MEM_GENDER = "남자";
                        } else if (gender.equals("FEMALE")) {
                            MEM_GENDER = "여자";
                        } else {
                            MEM_GENDER = "비공개";
                        }
                    } else {
                        MEM_GENDER = "";
                    }

//                    UserAccount account =  result.getKakaoAccount();
//
//                    System.out.println(account);

                    long id2 = result.getId();

                    String MEM_ID = id2 + "";


                    Log.e("MEM_NICKNAME : ", MEM_NICKNAME + "");
                    Log.e("MEM_EMAIL : ", MEM_EMAIL + "");
                    Log.e("MEM_ID : ", MEM_ID + "");
                    Log.e("MEM_AGE_GROUP : ", MEM_AGE_GROUP + "");
                    Log.e("MEM_GENDER : ", MEM_GENDER + "");

                    Intent intent = new Intent(getApplicationContext(), MainActivity.class);
                    intent.putExtra("MEM_NICKNAME", MEM_NICKNAME);
                    intent.putExtra("MEM_EMAIL", MEM_EMAIL);
                    intent.putExtra("MEM_ID", MEM_ID);
                    intent.putExtra("MEM_AGE_GROUP", MEM_AGE_GROUP);
                    intent.putExtra("MEM_GENDER", MEM_GENDER);

                    startActivity(intent);
                    overridePendingTransition(0, 0);

                    try {
                        String str;
                        LoginActivity.CustomTask task = new LoginActivity.CustomTask();
                        str = task.execute(MEM_NICKNAME, MEM_EMAIL, MEM_ID, MEM_AGE_GROUP, MEM_GENDER).get();
                        Log.i("리턴 값", str);
                        finish();
                    } catch (Exception e) {

                    }

                }

            });
        }

        @Override
        public void onSessionOpenFailed(KakaoException exception) {
            //로그인 세션이 정상적으로 열리지 않았을 때.
            Toast.makeText(getApplicationContext(), "로그인 도중 오류가 발생했습니다. 인터넷 연결을 확인해주세요: " + exception.toString(), Toast.LENGTH_SHORT).show();
        }

        private void getAppKeyHash() {
            try {
                PackageInfo info = getPackageManager().getPackageInfo(getPackageName(), PackageManager.GET_SIGNATURES);
                for (Signature signature : info.signatures) {
                    MessageDigest md;
                    md = MessageDigest.getInstance("SHA");
                    md.update(signature.toByteArray());
                    String something = new String(Base64.encode(md.digest(), 0));
                    Log.e("Hash key", something);
                }
            } catch (Exception e) {
                // TODO Auto-generated catch block
                Log.e("name not found", e.toString());
            }
        }

        public void onFailure(ErrorResult errorResult) {
            int result = errorResult.getErrorCode();

            if (result == ApiErrorCode.CLIENT_ERROR_CODE) {
                Toast.makeText(getApplicationContext(), "네트워크 연결이 불안정합니다. 다시 시도해 주세요.", Toast.LENGTH_SHORT).show();
                finish();
            } else {
                Toast.makeText(getApplicationContext(), "로그인 도중 오류가 발생했습니다: " + errorResult.getErrorMessage(), Toast.LENGTH_SHORT).show();
            }
        }

    }

// 카카오 로그인
    class CustomTask extends AsyncTask<String, Void, String> {
        String sendMsg, receiveMsg;

        // JSP로 값을 넘긴 후, MySQL로 데이터 저장
        @Override
        protected String doInBackground(String... strings) {
            try {
                String str;
                URL url = new URL("http://192.168.219.100:8088/BoardCa/app_input.do");
                HttpURLConnection conn = (HttpURLConnection) url.openConnection();
                conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
                conn.setRequestMethod("POST");
                OutputStreamWriter osw = new OutputStreamWriter(conn.getOutputStream());
                sendMsg = "MEM_NICKNAME=" + strings[0] + "&MEM_EMAIL=" + strings[1] + "&MEM_ID=" + strings[2] + "&MEM_AGE_GROUP=" + strings[3] + "&MEM_GENDER=" + strings[4];
                osw.write(sendMsg);
                osw.flush();
                if (conn.getResponseCode() == conn.HTTP_OK) {
                    InputStreamReader tmp = new InputStreamReader(conn.getInputStream(), "UTF-8");
                    BufferedReader reader = new BufferedReader(tmp);
                    StringBuffer buffer = new StringBuffer();
                    while ((str = reader.readLine()) != null) {
                        buffer.append(str);
                    }
                    receiveMsg = buffer.toString();

                } else {
                    Log.i("통신 결과", conn.getResponseCode() + "에러");
                }
                osw.close();
            } catch (MalformedURLException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
            return receiveMsg;
        }
    }

    // id pw 체크
    class IdPw extends AsyncTask<String, Void, String> {
        String sendMsg, receiveMsg;

        // JSP로 값을 넘긴 후, MySQL로 데이터 저장
        @Override
        protected String doInBackground(String... strings) {
            try {
                String str;
                URL url = new URL("http://192.168.219.100:8088/BoardCa/app_idpw.do");
                HttpURLConnection conn = (HttpURLConnection) url.openConnection();
                conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
                conn.setRequestMethod("POST");
                OutputStreamWriter osw = new OutputStreamWriter(conn.getOutputStream());
                sendMsg = "MEM_ID=" + strings[0] + "&MEM_PW=" + strings[1];

                osw.write(sendMsg);
                osw.flush();
                if (conn.getResponseCode() == conn.HTTP_OK) {
                    InputStreamReader tmp = new InputStreamReader(conn.getInputStream(), "UTF-8");
                    BufferedReader reader = new BufferedReader(tmp);
                    StringBuffer buffer = new StringBuffer();
                    while ((str = reader.readLine()) != null) {
                        buffer.append(str);
                    }
                    receiveMsg = buffer.toString();

                } else {
                    Log.i("통신 결과", conn.getResponseCode() + "에러");
                }
                osw.close();
            } catch (MalformedURLException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
            return receiveMsg;
        }
    }



}