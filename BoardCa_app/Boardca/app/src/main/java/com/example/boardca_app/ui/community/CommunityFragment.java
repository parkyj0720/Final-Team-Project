package com.example.boardca_app.ui.community;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;

import com.example.boardca_app.R;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.tabs.TabLayout;


public class CommunityFragment extends Fragment {

    private ViewGroup viewGroup;
    private ViewPager viewPager;
    private ViewPagerAdapter viewPagerAdapter;

    private FloatingActionButton fab_write;

    public String nickname = "nickname";
    public String email = "email";
    public String id = "id";
    public String age = "age";
    public String mf = "mf";

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {

        //뷰페이저 세팅
        viewPagerAdapter = new ViewPagerAdapter(getChildFragmentManager());
        viewPager = viewGroup.findViewById(R.id.viewPager);

        // 글 작성 버튼
        fab_write = (FloatingActionButton) view.findViewById(R.id.fab_write);

        FragmainBoard b_main = new FragmainBoard();
        FragtipBoard b_tip = new FragtipBoard();
        FragAskBoard b_ask = new FragAskBoard();
        FragReportBoard b_report = new FragReportBoard();

        // add your fragments
        viewPagerAdapter.addFrag(b_main, "숙취 게시판"); //메인탭
        viewPagerAdapter.addFrag(b_tip, "나만의 팁"); //나만의 팁
        viewPagerAdapter.addFrag(b_ask, "묻고 답하기"); //묻고 답하기
        viewPagerAdapter.addFrag(b_report, "신고하기"); //신고하기

        if (getArguments() != null) {
            nickname = getArguments().getString("nickname");// 전달한 key 값
            email = getArguments().getString("email"); // 전달한 key 값
            id = getArguments().getString("id"); // 전달한 key 값
            age = getArguments().getString("age"); // 전달한 key 값
            mf = getArguments().getString("mf"); // 전달한 key 값
        }

        Bundle bundle = new Bundle();
        bundle.putString("nickname", nickname); // Key, Value
        bundle.putString("email", email); // Key, Value
        bundle.putString("id", id); // Key, Value
        bundle.putString("age", age); // Key, Value
        bundle.putString("mf", mf); // Key, Value
        b_main.setArguments(bundle);

        Bundle bundle1 = new Bundle();
        bundle1.putString("nickname", nickname); // Key, Value
        bundle1.putString("email", email); // Key, Value
        bundle1.putString("id", id); // Key, Value
        bundle1.putString("age", age); // Key, Value
        bundle1.putString("mf", mf); // Key, Value
        b_tip.setArguments(bundle1);

        Bundle bundle2 = new Bundle();
        bundle2.putString("nickname", nickname); // Key, Value
        bundle2.putString("email", email); // Key, Value
        bundle2.putString("id", id); // Key, Value
        bundle2.putString("age", age); // Key, Value
        bundle2.putString("mf", mf); // Key, Value
        b_ask.setArguments(bundle2);

        Bundle bundle3 = new Bundle();
        bundle3.putString("nickname", nickname); // Key, Value
        bundle3.putString("email", email); // Key, Value
        bundle3.putString("id", id); // Key, Value
        bundle3.putString("age", age); // Key, Value
        bundle3.putString("mf", mf); // Key, Value
        b_report.setArguments(bundle3);


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

        // fab 글 작성 버튼
        fab_write.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                showWrite();
            }
        });

    }

    // 글 작성 액티비티 intent로 열기
    public void showWrite() {

        Intent i = new Intent(getActivity(), MakeActivity.class);

        i.putExtra("nickname", nickname);
        i.putExtra("email", email);
        i.putExtra("id", id);
        i.putExtra("age", age);
        i.putExtra("mf", mf);

        startActivity(i);
        getActivity().overridePendingTransition(0, 0);
    }

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater,
                             ViewGroup container, Bundle savedInstanceState) {
        viewGroup = (ViewGroup) inflater.inflate(R.layout.fragment_community, container, false);

        if (getArguments() != null) {
            nickname = getArguments().getString("nickname");// 전달한 key 값
            email = getArguments().getString("email"); // 전달한 key 값
            id = getArguments().getString("id"); // 전달한 key 값
            age = getArguments().getString("age"); // 전달한 key 값
            mf = getArguments().getString("mf"); // 전달한 key 값
        }

        return viewGroup;
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
    }


    // 게시글번호 (시퀀스) / 제목 / 작성자 / 내용 / 작성일 / 조회수 / 카테고리 번호 / 댓글 번호
    private int sequence;
    private String title;
    private String username;
    private int date;
    private String contents;
    private String views;

    public CommunityFragment() {
    }

    public int getSequence() {
        return sequence;
    }

    public void setSequence(int sequence) {
        this.sequence = sequence;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getDate() {
        return date;
    }

    public void setDate(int date) {
        this.date = date;
    }

    public String getContents() {
        return contents;
    }

    public void setContents(String contents) {
        this.contents = contents;
    }

    public String getViews() {
        return views;
    }

    public void setViews(String views) {
        this.views = views;
    }
}