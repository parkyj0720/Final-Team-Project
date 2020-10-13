package com.example.boardca_app.ui.community;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

import com.esafirm.imagepicker.model.Image;
import com.example.boardca_app.R;
import com.lumyjuwon.richwysiwygeditor.RichEditor.RichEditor;
import com.lumyjuwon.richwysiwygeditor.RichWysiwyg;

import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.List;

public class MakeActivity extends AppCompatActivity {

    private RichWysiwyg wysiwyg;
    private RadioGroup rg;
    private RadioButton rb;

    private static final int REQUEST_CODE = 0;

    public String nickname = "nickname";
    public String email = "email";
    public String id = "id";
    public String age = "age";
    public String mf = "mf";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_make);
        wysiwyg = findViewById(R.id.richwysiwygeditor);

        if (getIntent().getStringExtra("nickname") != null)
            nickname = getIntent().getStringExtra("nickname");
        if (getIntent().getStringExtra("email") != null)
            email = getIntent().getStringExtra("email");
        if (getIntent().getStringExtra("id") != null)
            id = getIntent().getStringExtra("id");
        if (getIntent().getStringExtra("age") != null)
            age = getIntent().getStringExtra("age");
        if (getIntent().getStringExtra("mf") != null)
            mf = getIntent().getStringExtra("mf");

        Log.e("nickname : ", nickname + "");
        Log.e("email : ", email + "");
        Log.e("id : ", id + "");
        Log.e("age : ", age + "");
        Log.e("mf : ", mf + "");
        rg = (RadioGroup) findViewById(R.id.rg1);

        wysiwyg.getContent()
                .setEditorFontSize(18)
                .setEditorPadding(4, 0, 4, 0);

        wysiwyg.getHeadlineEditText().setHint("Title");

        wysiwyg.getCancelButton().setText("Cancel");
        wysiwyg.getCancelButton().setOnClickListener(new Button.OnClickListener() {
            @Override
            public void onClick(View v) {
                finish();
            }
        });

        wysiwyg.getConfirmButton().setText("Write");
        wysiwyg.getConfirmButton().setOnClickListener(new Button.OnClickListener() {
            @Override
            public void onClick(View v) {
                // Handle this
                Log.i("Rich Wysiwyg Headline", wysiwyg.getHeadlineEditText().getText().toString());
                if (wysiwyg.getContent().getHtml() != null)
                    Log.i("Rich Wysiwyg", wysiwyg.getContent().getHtml());

                rb = (RadioButton) findViewById(rg.getCheckedRadioButtonId());

                boolean tf = false;
                String BRD_TIT = "";
                String BRD_CONTENT = "";
                String CATEGORY_IDX = "";

                // 유효성 체크 ( 빈 칸이면 write 기능 작동 X )
                if (rb == null) {
                    showText(0);
                } else {
                    if (wysiwyg.getHeadlineEditText().getText().toString().equals("")) {
                        showText(1);
                    } else {
                        if (wysiwyg.getContent().getHtml() == null) {
                            showText(2);
                        } else {
                            tf = true;
                        }
                    }
                }

                if (tf) {
                    // 선택한 게시판 받아오기
                    CATEGORY_IDX = rb.getText().toString();

                    switch (CATEGORY_IDX) {
                        case "숙취 게시판":
                            CATEGORY_IDX = 1 + "";
                            break;
                        case "정보 공유":
                            CATEGORY_IDX = 2 + "";
                            break;
                        case "질문하기":
                            CATEGORY_IDX = 3 + "";
                            break;
                        case "신고하기":
                            CATEGORY_IDX = 4 + "";
                            break;
                    }

                    // 제목 받아오기
                    BRD_TIT = wysiwyg.getHeadlineEditText().getText().toString();

                    // 내용 받아오기 (HTML 형식으로)
                    BRD_CONTENT = wysiwyg.getContent().getHtml();

                    try {
                        String result;
                        CustomTask task = new CustomTask();
                        result = task.execute(BRD_TIT, BRD_CONTENT, CATEGORY_IDX, nickname, email, id, age, mf).get();
                        Log.i("리턴 값", result);

                        if(result.equals("true")){
                            Toast.makeText(MakeActivity.this, "글쓰기 성공!.", Toast.LENGTH_SHORT).show();
                        }
                        finish();
                    } catch (Exception e) {
                        Toast.makeText(MakeActivity.this, "오류!.", Toast.LENGTH_SHORT).show();
                    }
                    tf = false;
                }
            }
        });

        wysiwyg.getInsertImageButton().setOnClickListener(new Button.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent();
                intent.setType("image/*");
                intent.setAction(Intent.ACTION_GET_CONTENT);
                startActivityForResult(intent, REQUEST_CODE);
            }
        });
    }


    public void showText(int num) {
        switch (num) {
            case 0:
                Toast.makeText(this, "커뮤니티를 선택해주세요.", Toast.LENGTH_SHORT).show();
                break;
            case 1:
                Toast.makeText(this, "제목을 입력해주세요.", Toast.LENGTH_SHORT).show();
                break;
            case 2:
                Toast.makeText(this, "내용을 입력해주세요.", Toast.LENGTH_SHORT).show();
                break;
        }
    }

    @Override
    protected void onActivityResult(int requestCode, final int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == REQUEST_CODE) {
            if (resultCode == RESULT_OK) {
                try {
                    InputStream in = getContentResolver().openInputStream(data.getData());

                    Bitmap img = BitmapFactory.decodeStream(in);

                    in.close();

//                    imageView.setImageBitmap(img);
                    String p = BitmapToString(img);
                    String photo = URLEncoder.encode(p, "utf-8");

                    String str = wysiwyg.getContent().getHtml();
                    if (str == null) {
                        str = "";
                    }
                    wysiwyg.getContent().setHtml(str + "<br><br>" + "<img width=\"400px\" height=\"400px\" src=\"data:image/png;base64," + photo + "\" alt=\"photo\" />" + "<br><br><br>");
                } catch (Exception e) {

                }
            } else if (resultCode == RESULT_CANCELED) {
                Toast.makeText(this, "사진 선택 취소", Toast.LENGTH_LONG).show();
            }
        }
    }

    /*
     * Bitmap을 String형으로 변환
     * */
    public static String BitmapToString(Bitmap bitmap) {
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, baos);
        byte[] bytes = baos.toByteArray();
        String temp = Base64.encodeToString(bytes, Base64.NO_WRAP);
        return temp;
    }

    private void insertImages(List<Image> images) {

        if (images == null) return;

        StringBuilder stringBuffer = new StringBuilder();
        for (int i = 0, l = images.size(); i < l; i++) {
            stringBuffer.append(images.get(i).getPath()).append("\n");
            // Handle this
            wysiwyg.getContent().insertImage("file://" + images.get(i).getPath(), "alt");
        }
    }


    class CustomTask extends AsyncTask<String, Void, String> {
        String sendMsg, receiveMsg;

        // JSP로 값을 넘긴 후, MySQL로 데이터 저장
        @Override
        protected String doInBackground(String... strings) {
            try {
                String str;
                URL url = new URL("http://182.213.18.164:8088/BoardCa/app_write_go.do");
                HttpURLConnection conn = (HttpURLConnection) url.openConnection();
                conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
                conn.setRequestMethod("POST");
                OutputStreamWriter osw = new OutputStreamWriter(conn.getOutputStream());
                sendMsg = "BRD_TIT=" + strings[0] + "&BRD_CONTENT=" + strings[1] + "&CATEGORY_IDX=" + strings[2] + "&nickname=" + strings[3] + "&email=" + strings[4] + "&id=" + strings[5] + "&age=" + strings[6] + "&mf=" + strings[7];

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