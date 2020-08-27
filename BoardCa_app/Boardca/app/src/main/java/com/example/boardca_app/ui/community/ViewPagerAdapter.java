package com.example.boardca_app.ui.community;

import android.os.Bundle;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.fragment.app.FragmentStatePagerAdapter;

public class ViewPagerAdapter extends FragmentStatePagerAdapter {
    public ViewPagerAdapter(@NonNull FragmentManager fm) {
        super(fm);
    }


    //프래그먼트 교체를 보여주는 처리를 구현한 곳.
    @NonNull
    @Override
    public Fragment getItem(int position) {
        Fragment fragment = new CommunityFragment();

        switch (position){
            case 0:
                return FragmainBoard.newInstance();
            case 1:
                return FragtipBoard.newInstance();
            case 2:
                return FragAskBoard.newInstance();
            case 3:
                return FragReportBoard.newInstance();
            default:return null;
        }
    }

    @Override
    public int getCount() {
        return 4;
    }


    // 상단의 탭 레이아웃 인디케이터 쪽에 텍스트를 선언해주는 곳.
    @Nullable
    @Override
    public CharSequence getPageTitle(int position) {

        switch (position){
            case 0:
                return "11111";
            case 1:
                return "22222";
            case 2:
                return "33333";
            case 3:
                return "44444";
            default:return null;
        }
    }
}
