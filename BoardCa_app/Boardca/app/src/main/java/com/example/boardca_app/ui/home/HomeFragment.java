package com.example.boardca_app.ui.home;

import android.animation.Animator;
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

import com.airbnb.lottie.LottieAnimationView;
import com.airbnb.lottie.LottieDrawable;
import com.example.boardca_app.R;

import java.util.ArrayList;
import java.util.Random;

public class HomeFragment extends Fragment {

    private View viewGroup;

    Button btnGame;
    TextView textGame;

    String[] labels = {"game1", "game2", "game3", "game4", "game5", "game6", "game7", "game8", "game9", "game10"};

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater,
                             ViewGroup container, Bundle savedInstanceState) {

        viewGroup = (ViewGroup) inflater.inflate(R.layout.fragment_home, container, false);

        LottieAnimationView animationView = viewGroup.findViewById(R.id.animation_view);
        setUpAnimation(animationView);
        animationView.loop(true);
        animationView.playAnimation();

        btnGame = (Button) viewGroup.findViewById(R.id.btn_game);
        textGame = (TextView) viewGroup.findViewById(R.id.textview_game);

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

    private void setUpAnimation(LottieAnimationView animationView) {
        // 재생할 애니메이션 넣어준다.
        animationView.setAnimation("home_data.json");
        // 반복횟수를 무한히 주고 싶을 땐 LottieDrawable.INFINITE or 원하는 횟수
        animationView.setRepeatCount(LottieDrawable.INFINITE);
        // 시작
        animationView.playAnimation();
    }
}