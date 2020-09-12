package com.example.boardca_app.ui.setting;

import android.os.Bundle;

import androidx.appcompat.app.AppCompatActivity;

import com.example.boardca_app.R;

public class SettingsActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.settings_activity);

        getSupportFragmentManager()
                .beginTransaction()
                .replace(R.id.settings, new SettingFragment())
                .commit();

//        ActionBar actionBar = getSupportActionBar();
//        if (actionBar != null) {
//            actionBar.setDisplayHomeAsUpEnabled(true);
//        }
    }

}

