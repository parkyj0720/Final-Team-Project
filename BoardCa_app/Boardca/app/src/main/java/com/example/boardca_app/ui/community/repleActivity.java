package com.example.boardca_app.ui.community;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

import com.example.boardca_app.R;

public class repleActivity extends AppCompatActivity {

    private EditText reple_editText;
    private Button button_reple;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_reple);

        reple_editText = findViewById(R.id.et_reple);
        button_reple = findViewById(R.id.btn_reple);

        button_reple.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
               putExtraData("reple",reple_editText.getText().toString());
            }

            private void putExtraData(String reple, String toString) {
            }
        });
    }
}
