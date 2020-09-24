package com.example.boardca_app.ui.home;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;

import androidx.annotation.Nullable;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProviders;

import com.example.boardca_app.R;

import java.util.ArrayList;
import java.util.Random;

public class HomeFragment extends Fragment {

    ViewGroup viewGroup;

    Button btnGame;
    TextView textGame;

    String[] labels = {"game1", "game2", "game3", "game4", "game5", "game6", "game7", "game8", "game9", "game10"};

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater,
                             ViewGroup container, Bundle savedInstanceState) {

        viewGroup = (ViewGroup) inflater.inflate(R.layout.fragment_home, container, false);

        btnGame = (Button)viewGroup.findViewById(R.id.btn_game);
        textGame = (TextView)viewGroup.findViewById(R.id.textview_game);

        btnGame.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Random random = new Random();
                int num = random.nextInt(10);
                textGame.setText(labels[num]);
                textGame.setVisibility(View.VISIBLE);
            }
        });

        return viewGroup;
    }
}