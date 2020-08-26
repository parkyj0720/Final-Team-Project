package com.example.boardca_app;

import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.GravityCompat;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.fragment.app.Fragment;
import androidx.navigation.NavController;
import androidx.navigation.Navigation;
import androidx.navigation.ui.AppBarConfiguration;
import androidx.navigation.ui.NavigationUI;

import com.example.boardca_app.ui.community.CommunityFragment;
import com.example.boardca_app.ui.game.GameFragment;
import com.example.boardca_app.ui.home.HomeFragment;
import com.example.boardca_app.ui.recipe.RecipeFragment;
import com.example.boardca_app.ui.share.MapFragment;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.google.android.material.navigation.NavigationView;
import com.google.android.material.snackbar.Snackbar;


public class MainActivity extends AppCompatActivity {

    //메뉴아이콘에 관련된 이벤트
    private AppBarConfiguration mAppBarConfiguration;

    //바텀 네비게이션
    private BottomNavigationView bottomNavigationView;

    private View view;

    //프래그먼트 생성
    private Fragment home_fragment;
    private Fragment recipe_fragment;
    private Fragment game_fragment;
    private Fragment community_fragment;
    private Fragment map_fragment;

    private BottomNavigationView.OnNavigationItemSelectedListener mOnNavigationItemSelectedListener
            = new BottomNavigationView.OnNavigationItemSelectedListener() {

        @Override
        public boolean onNavigationItemSelected(@NonNull MenuItem item) {
            try {
                switch (item.getItemId()) {
                    //menu.xml에 저장해뒀던 아이디 값을 받아와 swich문으로 선택 프래그먼트에 각자 다른 이벤트를 발생
                    case R.id.action_recipe: {
                        replaceFragment(recipe_fragment);
                        return true;
                    }
                    case R.id.action_game: {
                        replaceFragment(game_fragment);
                        return true;
                    }
                    case R.id.action_home: {
                        replaceFragment(home_fragment);
                        return true;
                    }
                    case R.id.action_community: {
                        replaceFragment(community_fragment);
                        return true;
                    }
                    case R.id.action_map: {
                        replaceFragment(map_fragment);
                        return true;
                    }
                }
            } catch (Exception e){
                e.printStackTrace();
            }
            return false;
        }
    };

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);

        //메시지 아이콘 - 스낵바 문장
        findViewById(R.id.fab)
                .setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View view) {
                        Snackbar.make(view, "Replace with your own action", Snackbar.LENGTH_LONG)
                                .setAction("Action", null)
                                .show();
                    }
                });

        //프래그먼트 생성
        this.home_fragment = new HomeFragment();
        this.recipe_fragment = new RecipeFragment();
        this.game_fragment = new GameFragment();
        this.community_fragment = new CommunityFragment();
        this.map_fragment = new MapFragment();

        //바텀 네비게이션 아이템 셀렉트문
        bottomNavigationView = findViewById(R.id.bottom_navigation);
        //바텀 네이베이션의 프래그먼트 선택 리스너
        bottomNavigationView.setOnNavigationItemSelectedListener(mOnNavigationItemSelectedListener);

        this.replaceFragment(home_fragment);
        this.createNavi();
    }




    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.main, menu);
        return true;
    }

    @Override
    public boolean onSupportNavigateUp() {
        NavController navController = Navigation.findNavController(this, R.id.nav_host_fragment);
        return NavigationUI
                .navigateUp(navController, mAppBarConfiguration)
                || super.onSupportNavigateUp();
    }


    //테스트용. 하단 뷰야 제발 사라져..!
    @Override
    protected void onDestroy() {
        super.onDestroy();
        if(view != null){
            ViewGroup parent = (ViewGroup) view.getParent();
            if(parent != null){
                parent.removeView(view);
            }
        }
    }

    //안드로이드 백버튼(뒤로 가기)를 누르면 발생되는 이벤트
    @Override
    public void onBackPressed() {

        DrawerLayout drawer = findViewById(R.id.drawer_layout);
        if(drawer.isDrawerOpen(GravityCompat.START)){
            drawer.closeDrawer(GravityCompat.START);
        } else{
            getSupportFragmentManager().popBackStack();
            super.onBackPressed();
        }
    }

    // 네비게이션 생성
    private void createNavi() {
//        DrawerLayout drawer = findViewById(R.id.drawer_layout);
//        NavigationView navigationView = findViewById(R.id.nav_view);
//
//        // Passing each menu ID as a set of Ids because each
//        // menu should be considered as top level destinations.
//        mAppBarConfiguration = new AppBarConfiguration.Builder(
//                R.id.nav_home, R.id.nav_recipe, R.id.nav_game,
//                R.id.nav_community, R.id.nav_map, R.id.nav_signup, R.id.nav_webview)
//                .setDrawerLayout(drawer)
//                .build();
//        NavController navController = Navigation.findNavController(this, R.id.nav_host_fragment);
//        NavigationUI.setupActionBarWithNavController(this, navController, mAppBarConfiguration);
//        NavigationUI.setupWithNavController(navigationView, navController);
    }

    // Fragment 변환을 해주기 위한 부분, Fragment의 Instance를 받아서 변경
    private void replaceFragment(Fragment fragment) {
        getSupportFragmentManager()
                .beginTransaction()
                .replace(R.id.main_content, fragment)
                .commit();
    }

}