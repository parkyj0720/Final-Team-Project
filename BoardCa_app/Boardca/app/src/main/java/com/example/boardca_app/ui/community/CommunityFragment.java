package com.example.boardca_app.ui.community;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.viewpager.widget.ViewPager;

import com.example.boardca_app.R;
import com.google.android.material.tabs.TabLayout;

public class CommunityFragment extends Fragment {

    private ViewGroup viewGroup;
    private ViewPager viewPager;
    private FragmentPagerAdapter fragmentPagerAdapter;

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {

        //뷰페이저 세팅
        ViewPagerAdapter viewPagerAdapter = new ViewPagerAdapter(getChildFragmentManager());
        viewPager = viewGroup.findViewById(R.id.viewPager);
        viewPager.setAdapter(viewPagerAdapter);

        TabLayout tabLayout = viewGroup.findViewById(R.id.tab_layout);
        viewPager.setAdapter(fragmentPagerAdapter);
        tabLayout.setupWithViewPager(viewPager);
    }

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater,
                             ViewGroup container, Bundle savedInstanceState) {
        viewGroup = (ViewGroup) inflater.inflate(R.layout.fragment_community, container, false);
        return viewGroup;
    }


}