package com.example.boardca_app.ui.signup;

import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;

import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;

import com.example.boardca_app.R;
import com.example.boardca_app.ui.login.LoginActivity;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

public class SignUpActivity extends AppCompatActivity {

    String id = "";
    String nickname = "";
    String pw = "";
    String pw2 = "";
    //    String name = "";
    String email = "";
    String MEM_ROCAL = "";
    String MEM_STATE = "";
//    String region3 = "";

    String mf = "";
    String age = "";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_sign_up);

        TextView back = findViewById(R.id.back);

        EditText sign_id = findViewById(R.id.sign_id);
        EditText sign_nick = findViewById(R.id.sign_nick);
        EditText password01 = findViewById(R.id.password01);
        EditText password02 = findViewById(R.id.password02);
//        EditText sign_name = findViewById(R.id.sign_name);
        EditText sign_email = findViewById(R.id.sign_email);
        Spinner spinner_region_1 = findViewById(R.id.spinner_region_1);
        Spinner spinner_region_2 = findViewById(R.id.spinner_region_2);
//        Spinner spinner_region_3 = findViewById(R.id.spinner_region_3);
        RadioButton rb_check1 = findViewById(R.id.rb_check1);
        RadioButton rb_check2 = findViewById(R.id.rb_check2);

        TextView redred = findViewById(R.id.redred);

        Button doubleCheck = findViewById(R.id.doubleCheck);

        rb_check1.setChecked(true);
        rb_check2.setChecked(true);

        RadioGroup rg_gender = findViewById(R.id.rg_gender);
        RadioGroup rg_age = findViewById(R.id.rg_age);

        if (getIntent().getStringExtra("nickname") != null) {
            nickname = getIntent().getStringExtra("nickname");
            if (!(nickname.equals(""))) {
                sign_nick.setText(nickname);
            }
        }
        if (getIntent().getStringExtra("email") != null) {
            email = getIntent().getStringExtra("email");
            if (!(email.equals(""))) {
                sign_email.setText(email);
            }
        }
        if (getIntent().getStringExtra("id") != null) {
            id = getIntent().getStringExtra("id");
            if (!(id.equals(""))) {
                sign_id.setText(id);
                sign_id.setClickable(false);
                sign_id.setFocusable(false);
            }
        }
        if (getIntent().getStringExtra("age") != null) {
            age = getIntent().getStringExtra("age");
        }
        if (getIntent().getStringExtra("mf") != null) {
            mf = getIntent().getStringExtra("mf");
        }

        ImageButton button = findViewById(R.id.finish_next_btn);
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

                if (sign_id.getText() != null) {
                    id = sign_id.getText() + "";
                } else {
                    id = "";
                }

                if (sign_nick.getText() != null) {
                    nickname = sign_nick.getText() + "";
                } else {
                    nickname = "";
                }

                if (password01.getText() != null) {
                    pw = password01.getText() + "";
                } else {
                    pw = "";
                }
                if (password02.getText() != null) {
                    pw2 = password02.getText() + "";
                } else {
                    pw2 = "";
                }

                if (sign_email.getText() != null) {
                    email = sign_email.getText() + "";
                } else {
                    email = "";
                }

                if (spinner_region_1.getSelectedItem().toString() != null) {
                    MEM_ROCAL = spinner_region_1.getSelectedItem().toString() + "";
                } else {
                    MEM_ROCAL = "";
                }
                if (spinner_region_2.getSelectedItem().toString() != null) {
                    MEM_STATE = spinner_region_2.getSelectedItem().toString() + "";
                } else {
                    MEM_STATE = "";
                }

                RadioButton rb_gender = findViewById(rg_gender.getCheckedRadioButtonId());
                RadioButton rb_age = findViewById(rg_age.getCheckedRadioButtonId());

                mf = rb_gender.getText().toString();
                age = rb_age.getText().toString();

                Log.v("id", id);
                Log.v("nickname", nickname);
                Log.v("pw", pw);
                Log.v("pw2", pw2);
//                Log.v("name", name);
                Log.v("email", email);
                Log.v("MEM_ROCAL", MEM_ROCAL);
                Log.v("MEM_STATE", MEM_STATE);
//                Log.v("region3", region3);
                Log.v("mf", mf);
                Log.v("age", age);

                if (id != "" && pw != "" && pw2 != "" && email != "" && nickname != "") {

                    // 아이디, 닉네임 db와 비교해서 일치 여부 확인
                    String result = "";
                    try {
                        CustomTask task = new CustomTask();
                        result = task.execute(id, nickname).get();
                        Log.i("리턴 값", result);
                    } catch (Exception e) {

                    }

                    switch (result) {
                        case "true":
                            if (pw.equals(pw2)) {
                                if (email.contains("@")) {
                                    if (redred.getVisibility() == View.VISIBLE) {
                                        password01.requestFocus();
                                    } else {
                                        // db에 넣기
                                        try {
                                            Qweqwe qweqwe = new Qweqwe();
                                            result = qweqwe.execute(id, nickname, pw, email, MEM_ROCAL, MEM_STATE, mf, age).get();
                                            Log.i("리턴 값", result);
                                        } catch (Exception e) {

                                        }


                                        Intent intent = new Intent(getApplicationContext(), FinishActivity.class);
                                        //intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TASK); //새로운 테스크에 작동시키기.
                                        startActivity(intent);
                                        overridePendingTransition(0, 0);
                                        finish();
                                    }
                                } else {
                                    sign_email.requestFocus();
                                    Toast.makeText(SignUpActivity.this, "이메일 형식에 맞게 적어주세요.", Toast.LENGTH_SHORT).show();
                                }
                            } else {
                                Toast.makeText(SignUpActivity.this, "비밀번호가 일치하지 않습니다.", Toast.LENGTH_SHORT).show();
                                password01.requestFocus();
                            }
                            break;

                        case "false1":
                            Toast.makeText(SignUpActivity.this, "아이디 중복!!!!", Toast.LENGTH_SHORT).show();
                            sign_id.requestFocus();
                            break;
                        case "false2":
                            Toast.makeText(SignUpActivity.this, "닉네임 중복!!!!", Toast.LENGTH_SHORT).show();
                            sign_nick.requestFocus();
                            break;
                    }
                } else {
                    Toast.makeText(SignUpActivity.this, "빈 부분을 적어주세요.", Toast.LENGTH_SHORT).show();
                    if (nickname.equals("")) {
                        sign_nick.requestFocus();
                    } else {
                        if (id.equals("")) {
                            sign_id.requestFocus();
                        } else {
                            if (pw.equals("")) {
                                password01.requestFocus();
                            } else {
                                if (pw2.equals("")) {
                                    password02.requestFocus();
                                } else {
                                    if (email.equals("")) {
                                        sign_email.requestFocus();
                                    }
                                }
                            }
                        }
                    }
                }
            }
        });

        password01.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
                // 입력하기 전에
            }

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {
                // 입력되는 텍스트에 변화가 있을 때
                if (password01.getText().length() < 8) {
                    redred.setText("비밀번호는 특수문자를 포함하여 8자리 이상");
                    redred.setVisibility(View.VISIBLE);
                } else {
                    redred.setVisibility(View.INVISIBLE);
                }
            }

            @Override
            public void afterTextChanged(Editable s) {
                // 입력이 끝났을 때
                String str = password01.getText() + "";

                if (password01.getText().length() < 8) {
                    redred.setText("비밀번호는 특수문자를 포함하여 8자리 이상");
                    redred.setVisibility(View.VISIBLE);
                } else {
                    if (str.contains("!") || str.contains("?") || str.contains("@") || str.contains("#") || str.contains("$") || str.contains("%") || str.contains("&")) {
                        redred.setVisibility(View.INVISIBLE);
                        if (str.contains(" ")) {
                            redred.setText("공백은 입력할 수 없습니다.");
                            redred.setVisibility(View.VISIBLE);
                        } else {
                            redred.setVisibility(View.INVISIBLE);
                        }
                    } else {
                        redred.setText("! ? @ # $ % & 중 특수 문자 한 가지 이상 포함");
                        redred.setVisibility(View.VISIBLE);
                    }
                }
                if (password01.getText().length() == 0) {
                    redred.setText("비밀번호는 특수문자를 포함하여 8자리 이상");
                    redred.setVisibility(View.INVISIBLE);
                }
            }
        });


        back.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(getApplicationContext(), LoginActivity.class);
                //intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TASK); //새로운 테스크에 작동시키기.
                startActivity(intent);
                overridePendingTransition(0, 0);
                finish();
            }
        });

        doubleCheck.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (sign_id.getText() != null) {
                    id = sign_id.getText() + "";
                } else {
                    id = "";
                }

                if (sign_nick.getText() != null) {
                    nickname = sign_nick.getText() + "";
                } else {
                    nickname = "";
                }

                String result = "";
                try {
                    CustomTask task = new CustomTask();
                    result = task.execute(id, nickname).get();
                    Log.i("리턴 값", result);
                } catch (Exception e) {

                }
                if (result.equals("true")) {
                    Toast.makeText(SignUpActivity.this, "아이디 사용가능!", Toast.LENGTH_SHORT).show();
                } else {
                    switch (result) {
                        case "false1":
                            Toast.makeText(SignUpActivity.this, "아이디 중복!!!!", Toast.LENGTH_SHORT).show();
                            break;
                        case "false2":
                            if (nickname.equals("")) {
                                Toast.makeText(SignUpActivity.this, "아이디 사용가능! 닉네임을 입력하세요.", Toast.LENGTH_SHORT).show();
                                sign_nick.requestFocus();
                            } else {
                                Toast.makeText(SignUpActivity.this, "아이디 사용가능!", Toast.LENGTH_SHORT).show();
                            }
                            break;
                    }
                }
            }
        });

    }

    // 아이디 닉네임 비교
    class CustomTask extends AsyncTask<String, Void, String> {
        String sendMsg, receiveMsg;

        // JSP로 값을 넘긴 후, MySQL로 데이터 저장
        @Override
        protected String doInBackground(String... strings) {
            try {
                String str;
                URL url = new URL("http://182.213.18.164:8088/BoardCa/app_sign.do");
                HttpURLConnection conn = (HttpURLConnection) url.openConnection();
                conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
                conn.setRequestMethod("POST");
                OutputStreamWriter osw = new OutputStreamWriter(conn.getOutputStream());
                sendMsg = "id=" + strings[0] + "&nickname=" + strings[1];

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

    // DB에 넣기
    class Qweqwe extends AsyncTask<String, Void, String> {
        String sendMsg, receiveMsg;

        // JSP로 값을 넘긴 후, MySQL로 데이터 저장
        @Override
        protected String doInBackground(String... strings) {
            try {
                String str;
                URL url = new URL("http://182.213.18.164:8088/BoardCa/app_nomal_sign.do");
                HttpURLConnection conn = (HttpURLConnection) url.openConnection();
                conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
                conn.setRequestMethod("POST");
                OutputStreamWriter osw = new OutputStreamWriter(conn.getOutputStream());
                sendMsg = "id=" + strings[0] + "&nickname=" + strings[1] + "&pw=" + strings[2] + "&email=" + strings[3] + "&MEM_ROCAL=" + strings[4] + "&MEM_STATE=" + strings[5] + "&mf=" + strings[6] + "&age=" + strings[7];
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
