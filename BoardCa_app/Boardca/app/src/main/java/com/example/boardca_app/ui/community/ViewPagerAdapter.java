package com.example.boardca_app.ui.community;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.fragment.app.FragmentStatePagerAdapter;

public class ViewPagerAdapter extends FragmentStatePagerAdapter {
    public ViewPagerAdapter(@NonNull FragmentManager fm) {
        super(fm);
    }

    @NonNull
    @Override
    public Fragment getItem(int position) {
        switch (position){
            case 0:
                return FragmainBoard.newInstance();
            case 1:
                return FragtipBoard.newInstance();
            case 2:
                return FragtipBoard.newInstance();
            default:return null;
        }
    }

    @Override
    public int getCount() {
        return 3;
    }
}
