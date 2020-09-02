package com.example.boardca_app.ui.community;

import android.os.Bundle;
import android.view.ViewGroup;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.fragment.app.FragmentStatePagerAdapter;
import androidx.fragment.app.FragmentTransaction;

import java.util.ArrayList;
import java.util.List;

public class ViewPagerAdapter extends FragmentPagerAdapter {

    List<Fragment> fragmentList = new ArrayList<>();
    List<String> fragmentTitleList = new ArrayList<>();
    private FragmentManager fragmentManager;

    public ViewPagerAdapter(FragmentManager manager) {
        super(manager);
    }

    @Override
    public Fragment getItem(int position) {
        return fragmentList.get(position);
    }

    @Override
    public int getCount() {
        return fragmentList.size();
    }

    @Override
    public CharSequence getPageTitle(int position) {
        return fragmentTitleList.get(position);
    }

    public void addFrag(Fragment fragment) {
        fragmentList.add(fragment);
        fragmentTitleList.add("");
    }

    public void addFrag(Fragment fragment, String title) {
        fragmentList.add(fragment);
        fragmentTitleList.add(title);
    }


    //프래그먼트 교체를 보여주는 처리를 구현한 곳.
//    @NonNull
//    @Override
//    public Fragment getItem(int position) {
//
////        Bundle args = new Bundle();
////        args.putInt(CommunityFragment.args, position+1);
//
//        switch (position) {
//            case 0:
//                return FragmainBoard.newInstance();
//            case 1:
//                return FragtipBoard.newInstance();
//            case 2:
//                return FragAskBoard.newInstance();
//            case 3:
//                return FragReportBoard.newInstance();
//            default:
//                return null;
//        }
//    }
//
//
//    @Override
//    public int getCount() {
//        return 4;
//    }
//
//    @Override
//    public void destroyItem(@NonNull ViewGroup container, int position, @NonNull Object object) {
//        FragmentManager fragmentManager = ((Fragment) object).getFragmentManager();
//        FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
//        fragmentTransaction.remove((Fragment) object);
//        fragmentTransaction.commit();
//    }
//
//    // 상단의 탭 레이아웃 인디케이터 쪽에 텍스트를 선언해주는 곳.
//    @Nullable
//    @Override
//    public CharSequence getPageTitle(int position) {
//
//        switch (position) {
//            case 0:
//                return "11111";
//            case 1:
//                return "22222";
//            case 2:
//                return "33333";
//            case 3:
//                return "44444";
//            default:
//                return null;
//        }
//    }
}
