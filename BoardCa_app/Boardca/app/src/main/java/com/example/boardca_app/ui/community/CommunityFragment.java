package com.example.boardca_app.ui.community;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;

import com.example.boardca_app.R;
import com.google.android.material.tabs.TabLayout;

public class CommunityFragment extends Fragment {

    private ViewGroup viewGroup;
    private ViewPager viewPager;
    private ViewPagerAdapter viewPagerAdapter;

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {



        //뷰페이저 세팅
        viewPagerAdapter = new ViewPagerAdapter(getChildFragmentManager());
        viewPager = viewGroup.findViewById(R.id.viewPager);

        // add your fragments
        viewPagerAdapter.addFrag(new FragmainBoard(), "메인"); //메인탭
        viewPagerAdapter.addFrag(new FragtipBoard(), "나만의 팁"); //나만의 팁
        viewPagerAdapter.addFrag(new FragmainBoard(), "묻고 답하기"); //묻고 답하기
        viewPagerAdapter.addFrag(new FragmainBoard(), "신고하기"); //신고하기

        viewPager.setAdapter(viewPagerAdapter);

        TabLayout tabLayout = viewGroup.findViewById(R.id.tab_layout);
        tabLayout.setupWithViewPager(viewPager);

        tabLayout.addOnTabSelectedListener(new TabLayout.OnTabSelectedListener() {
            @Override
            public void onTabSelected(TabLayout.Tab tab) {
                // TODO : tab의 상태가 선택 상태로 변경.
                System.out.println(tab);
                int index = tab.getPosition();

                viewPager.setCurrentItem(index);
            }

            @Override
            public void onTabUnselected(TabLayout.Tab tab) {
                // TODO : tab의 상태가 선택되지 않음으로 변경.
            }

            @Override
            public void onTabReselected(TabLayout.Tab tab) {
                // TODO : 이미 선택된 tab이 다시
            }
        });

    }

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater,
                             ViewGroup container, Bundle savedInstanceState) {
        viewGroup = (ViewGroup) inflater.inflate(R.layout.fragment_community, container, false);

        return viewGroup;
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
    }
}