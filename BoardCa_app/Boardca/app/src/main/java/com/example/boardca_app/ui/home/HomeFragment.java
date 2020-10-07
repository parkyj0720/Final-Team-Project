package com.example.boardca_app.ui.home;

import android.animation.Animator;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
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

    ImageButton btnGame;
    TextView textGame;
    ImageView gameImage;

    int[] imageResources = {R.drawable.game_01, R.drawable.game_02, R.drawable.game_03, R.drawable.game_04, R.drawable.game_05};

    String[] labels = {"game1", "game2", "game3", "game4", "game5", "game6", "game7", "game8", "game9", "game10"};

    boolean tf = true;

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater,
                             ViewGroup container, Bundle savedInstanceState) {

        viewGroup = (ViewGroup) inflater.inflate(R.layout.fragment_home, container, false);

        gameImage = (ImageView) viewGroup.findViewById(R.id.game_img);

        LottieAnimationView animationView = viewGroup.findViewById(R.id.animation_view);
        setUpAnimation(animationView);

        animationView.addAnimatorListener(new Animator.AnimatorListener() {
            @Override
            public void onAnimationStart(Animator animation) {
            }

            @Override
            public void onAnimationEnd(Animator animation) {
                animationView.setVisibility(View.GONE);
                gameImage.setVisibility(View.VISIBLE);
            }

            @Override
            public void onAnimationCancel(Animator animation) {

            }

            @Override
            public void onAnimationRepeat(Animator animation) {

            }
        });

        btnGame = (ImageButton) viewGroup.findViewById(R.id.btn_game);
        textGame = (TextView) viewGroup.findViewById(R.id.textview_game);

        btnGame.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
//                Random random = new Random();
//                int num = random.nextInt(10);
//                textGame.setText(labels[num]);
//                textGame.setVisibility(View.VISIBLE);

                if(tf) {
                    //gameImage.setVisibility(View.GONE);
                    int i = (int) (Math.random()*5);
                    int res = imageResources[i];
                    gameImage.setImageResource(res);
                    animationView.setVisibility(View.VISIBLE);
                    // 재생할 애니메이션 넣어준다.
                    animationView.setAnimation("click_data.json");
                    animationView.loop(true);
                    // 반복횟수를 무한히 주고 싶을 땐 LottieDrawable.INFINITE or 원하는 횟수
                    animationView.setRepeatCount(0);
                    // 시작
                    animationView.playAnimation();

                    btnGame.setImageResource(R.drawable.back_btn);

                    tf = false;
                } else{
                    btnGame.setImageResource(R.drawable.start_btn);
                    setUpAnimation(animationView);

                    tf = true;
                }

            }
        });
        return viewGroup;
    }

    private void setUpAnimation(LottieAnimationView animationView) {
        // 이미지 없애기
        gameImage.setVisibility(View.GONE);
        // 애니메이션 보이기
        animationView.setVisibility(View.VISIBLE);

        // 재생할 애니메이션 넣어준다.
        animationView.setAnimation("home_data.json");
        animationView.loop(true);
        // 반복횟수를 무한히 주고 싶을 땐 LottieDrawable.INFINITE or 원하는 횟수
        animationView.setRepeatCount(LottieDrawable.INFINITE);
        // 시작
        animationView.playAnimation();
    }

    @Override
    public void onStart() {
        super.onStart();
        gameImage.setVisibility(View.GONE);
    }
}