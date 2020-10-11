package com.example.boardca_app;

import android.Manifest;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.location.Address;
import android.location.Geocoder;
import android.location.LocationManager;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.appcompat.app.ActionBarDrawerToggle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.core.view.GravityCompat;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.fragment.app.Fragment;
import androidx.navigation.NavController;
import androidx.navigation.Navigation;
import androidx.navigation.ui.AppBarConfiguration;
import androidx.navigation.ui.NavigationUI;

import com.example.boardca_app.ui.Map.GpsTracker;
import com.example.boardca_app.ui.Map.MapFragment;
import com.example.boardca_app.ui.Map.MapsActivity;
import com.example.boardca_app.ui.community.CommunityFragment;
import com.example.boardca_app.ui.game.GameFragment;
import com.example.boardca_app.ui.home.HomeFragment;

import com.example.boardca_app.ui.login.LoginActivity;
import com.example.boardca_app.ui.recipe.RecipeFragment;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.google.android.material.navigation.NavigationView;
import com.kakao.usermgmt.UserManagement;
import com.kakao.usermgmt.callback.LogoutResponseCallback;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;


public class MainActivity extends AppCompatActivity {

    public double latitude = 37.519678;
    public double longitude = 126.940079;

    private GpsTracker gpsTracker;
    private Context context = this;

    //메뉴아이콘에 관련된 이벤트
    private AppBarConfiguration mAppBarConfiguration;
    private ListView lvNavList;
    private FrameLayout flContainer;
    private DrawerLayout dlDrawer;
    private ActionBarDrawerToggle dtToggle;

    //바텀 네비게이션
    private BottomNavigationView bottomNavigationView;
    private View view;

    //프래그먼트 생성
    private Fragment home_fragment;
    private Fragment recipe_fragment;
    private Fragment game_fragment;
    private Fragment community_fragment;
    private Fragment map_fragment;

    public String nickname = "nickname";
    public String email = "email";
    public String id = "id";
    public String age = "age";
    public String mf = "mf";

    private BottomNavigationView.OnNavigationItemSelectedListener mOnNavigationItemSelectedListener
            = new BottomNavigationView.OnNavigationItemSelectedListener() {

        @Override
        public boolean onNavigationItemSelected(@NonNull MenuItem item) {
            try {

                if(getIntent().getStringExtra("id") != null) {
                    id = getIntent().getStringExtra("id");
                }
                if(getIntent().getStringExtra("nickname") != null) {
                    nickname = getIntent().getStringExtra("nickname");
                }
                if(getIntent().getStringExtra("email") != null) {
                    email = getIntent().getStringExtra("email");
                }
                if(getIntent().getStringExtra("age") != null) {
                    age = getIntent().getStringExtra("age");
                }
                if(getIntent().getStringExtra("mf") != null) {
                    mf = getIntent().getStringExtra("mf");
                }

                Bundle bundle = new Bundle();
                bundle.putString("nickname", nickname); // Key, Value
                bundle.putString("email", email); // Key, Value
                bundle.putString("id", id); // Key, Value
                bundle.putString("age", age); // Key, Value
                bundle.putString("mf", mf); // Key, Value

                switch (item.getItemId()) {
                    //menu.xml에 저장해뒀던 아이디 값을 받아와 swich문으로 선택 프래그먼트에 각자 다른 이벤트를 발생
                    case R.id.action_home: {

                        home_fragment.setArguments(bundle);

                        replaceFragment(home_fragment);
                        return true;
                    }
                    case R.id.action_recipe: {

                        recipe_fragment.setArguments(bundle);

                        replaceFragment(recipe_fragment);
                        return true;
                    }
                    case R.id.action_game: {

                        game_fragment.setArguments(bundle);

                        replaceFragment(game_fragment);
                        return true;
                    }
                    case R.id.action_community: {

                        community_fragment.setArguments(bundle);

                        replaceFragment(community_fragment);
                        return true;
                    }
                    case R.id.action_map: {

                        showMap();
                        return true;
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return false;
        }
    };

    public void showMap() {
        Intent kakaoMap = new Intent(this, MapsActivity.class);
        startActivity(kakaoMap);
        overridePendingTransition(0, 0);
    }

    //위에 설정 메뉴 아이콘 생성
    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.setting_main, menu);
        return true;
    }
    //설정 아이콘
    @Override
    public boolean onOptionsItemSelected(@NonNull MenuItem item) {
        int id = item.getItemId();
        if (id == R.id.action_settings) {
            AlertDialog.Builder builder = new AlertDialog.Builder(context);
            builder.setTitle("로그아웃 하시겠습니까?");


            builder.setPositiveButton("네", new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialogInterface, int i) {
                    onClickLogout();
                }
            });
            builder.setNegativeButton("아니요", new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialogInterface, int i) {
                    builder.setCancelable(false);
                }
            });
            builder.show();
        }

        return super.onOptionsItemSelected(item);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

//
//        Button logoutbtn = findViewById(R.id.logoutbtn);
//        logoutbtn.setOnClickListener(new View.OnClickListener() {
//            @Override
//            public void onClick(View v) {
//                onClickLogout();
//            }
//        });

        if(getIntent().getStringExtra("nickname") != null)
            nickname = getIntent().getStringExtra("nickname");
        if(getIntent().getStringExtra("email") != null)
            email = getIntent().getStringExtra("email");
        if(getIntent().getStringExtra("id") != null)
            id = getIntent().getStringExtra("id");
        if(getIntent().getStringExtra("age") != null)
            age = getIntent().getStringExtra("age");
        if(getIntent().getStringExtra("mf") != null)
            mf = getIntent().getStringExtra("mf");

        Log.e("nickname : ", nickname + "");
        Log.e("email : ", email + "");
        Log.e("id : ", id + "");
        Log.e("age : ", age + "");
        Log.e("mf : ", mf + "");

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);

        // Set drawable
        toolbar.setLogo(ContextCompat.getDrawable(context, R.drawable.logo_title));
        // Find logo
        View view = toolbar.getChildAt(1);
        view.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                replaceFragment(home_fragment);
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

        this.createNavi();

        if (!checkLocationServicesStatus()) {

            showDialogForLocationServiceSetting();
        } else {

            checkRunTimePermission();
        }

        // 구글 api 사용한 현 위치 가져오기
        gpsTracker = new GpsTracker(MainActivity.this);

        latitude = gpsTracker.getLatitude();
        longitude = gpsTracker.getLongitude();

        String address = getCurrentAddress(latitude, longitude);
        Log.v("확인", address);


    }

    @Override
    public boolean onSupportNavigateUp() {
        NavController navController = Navigation.findNavController(this, R.id.nav_host_fragment);
        return NavigationUI
                .navigateUp(navController, mAppBarConfiguration)
                || super.onSupportNavigateUp();
    }

    //테스트용.
    @Override
    protected void onDestroy() {
        super.onDestroy();
        if (view != null) {
            ViewGroup parent = (ViewGroup) view.getParent();
            if (parent != null) {
                parent.removeView(view);
            }
        }
    }

    //안드로이드 백버튼(뒤로 가기)를 누르면 발생되는 이벤트
    @Override
    public void onBackPressed() {

        DrawerLayout drawer = findViewById(R.id.drawer_layout);
        if (drawer.isDrawerOpen(GravityCompat.START)) {
            drawer.closeDrawer(GravityCompat.START);
        } else {
            getSupportFragmentManager().popBackStack();
            super.onBackPressed();
        }
    }

    public boolean monNavigationItemSelected(MenuItem item){

        int id = item.getItemId();

        if (id == R.id.nav_inquiries) {
            Toast.makeText(this, "버튼", Toast.LENGTH_LONG).show();

        } else if (id == R.id.nav_mypage) {
            Toast.makeText(this, "마이페이지", Toast.LENGTH_LONG).show();
        } else if (id == R.id.nav_hearts) {
            Toast.makeText(this, "관심글", Toast.LENGTH_LONG).show();
        } else if (id == R.id.nav_coupons) {
            Toast.makeText(this, "쿠폰", Toast.LENGTH_LONG).show();
        }

        DrawerLayout drawer = (DrawerLayout) findViewById(R.id.drawer_layout);
        drawer.closeDrawer(GravityCompat.START);
        return true;
    };

    // 네비게이션 생성
    private MenuItem navItems;
    private void createNavi() {
        //시작 프래그먼트
        this.replaceFragment(home_fragment);
        final DrawerLayout drawer = findViewById(R.id.drawer_layout);
        NavigationView navigationView = findViewById(R.id.nav_view);
        NavController navController = Navigation.findNavController(this, R.id.nav_host_fragment);

        mAppBarConfiguration = new AppBarConfiguration.Builder(navController.getGraph())
                .setDrawerLayout(drawer)
                .build();

        NavigationUI.setupActionBarWithNavController(this, navController, mAppBarConfiguration);
        NavigationUI.setupWithNavController(navigationView, navController);
        //NavigationUI.onNavDestinationSelected(navItems, navController);

    }



        //        lvNavList = (ListView)findViewById(R.id.lv_activity_main_nav_list);
//        flContainer = (FrameLayout)findViewById(R.id.nav_host_fragment);
//
//        lvNavList.setAdapter(
//                new ArrayAdapter<String>(this, android.R.layout.simple_list_item_1, navItems));
//        lvNavList.setOnItemClickListener(new DrawerItemClickListener());
//
//        dlDrawer = (DrawerLayout)findViewById(R.id.drawer_layout);
//        dtToggle = new ActionBarDrawerToggle(MainActivity, baseline_format_align_right_black_48, navigation_drawer_open, navigation_drawer_close){
//
//            @Override
//            public void onDrawerClosed(View drawerView) {
//                super.onDrawerClosed(drawerView);
//            }
//
//            @Override
//            public void onDrawerOpened(View drawerView) {
//                super.onDrawerOpened(drawerView);
//            }
//
//        };
//        dlDrawer.setDrawerListener(dtToggle);
//        getActionBar().setDisplayHomeAsUpEnabled(true);
//
//
//    }
//
//    private class DrawerItemClickListener implements ListView.OnItemClickListener {
//
//        @Override
//        public void onItemClick(AdapterView<?> adapter, View view, int position,
//                                long id) {
//            switch (position) {
//                case 0:
//                    flContainer.setBackgroundColor(Color.parseColor("#A52A2A"));
//                    break;
//                case 1:
//                    flContainer.setBackgroundColor(Color.parseColor("#5F9EA0"));
//                    break;
//                case 2:
//                    flContainer.setBackgroundColor(Color.parseColor("#556B2F"));
//                    break;
//                case 3:
//                    flContainer.setBackgroundColor(Color.parseColor("#FF8C00"));
//                    break;
//                case 4:
//                    flContainer.setBackgroundColor(Color.parseColor("#DAA520"));
//                    break;
//            }
//            dlDrawer.closeDrawer(lvNavList);
//
//        }
//    }
//
//    protected void onPostCreate(Bundle savedInstanceState){
//        super.onPostCreate(savedInstanceState);
//        dtToggle.syncState();
//    }
//
//    @Override
//    public void onConfigurationChanged(Configuration newConfig) {
//        super.onConfigurationChanged(newConfig);
//        dtToggle.onConfigurationChanged(newConfig);
//    }










    public static View getToolbarLogoIcon(Toolbar toolbar) {
        //check if contentDescription previously was set
        boolean hadContentDescription = android.text.TextUtils.isEmpty(toolbar.getLogoDescription());
        String contentDescription = String.valueOf(!hadContentDescription ? toolbar.getLogoDescription() : "logoContentDescription");
        toolbar.setLogoDescription(contentDescription);
        ArrayList<View> potentialViews = new ArrayList<View>();
        //find the view based on it's content description, set programatically or with android:contentDescription
        toolbar.findViewsWithText(potentialViews, contentDescription, View.FIND_VIEWS_WITH_CONTENT_DESCRIPTION);
        //Nav icon is always instantiated at this point because calling setLogoDescription ensures its existence
        View logoIcon = null;
        if (potentialViews.size() > 0) {
            logoIcon = potentialViews.get(0);
        }
        //Clear content description if not previously present
        if (hadContentDescription)
            toolbar.setLogoDescription(null);
        return logoIcon;
    }


    // Fragment 변환을 해주기 위한 부분, Fragment의 Instance를 받아서 변경
    private void replaceFragment(Fragment fragment) {
        getSupportFragmentManager()
                .beginTransaction()
                .replace(R.id.main_content, fragment)
                .commit();
    }

    private static final int GPS_ENABLE_REQUEST_CODE = 2001;
    private static final int PERMISSIONS_REQUEST_CODE = 100;
    String[] REQUIRED_PERMISSIONS = {Manifest.permission.ACCESS_FINE_LOCATION, Manifest.permission.ACCESS_COARSE_LOCATION};


    /*
     * ActivityCompat.requestPermissions를 사용한 퍼미션 요청의 결과를 리턴받는 메소드입니다.
     */
    @Override
    public void onRequestPermissionsResult(int permsRequestCode,
                                           @NonNull String[] permissions,
                                           @NonNull int[] grandResults) {

        if (permsRequestCode == PERMISSIONS_REQUEST_CODE && grandResults.length == REQUIRED_PERMISSIONS.length) {

            // 요청 코드가 PERMISSIONS_REQUEST_CODE 이고, 요청한 퍼미션 개수만큼 수신되었다면

            boolean check_result = true;


            // 모든 퍼미션을 허용했는지 체크합니다.

            for (int result : grandResults) {
                if (result != PackageManager.PERMISSION_GRANTED) {
                    check_result = false;
                    break;
                }
            }


            if (check_result) {

                //위치 값을 가져올 수 있음
                ;
            } else {
                // 거부한 퍼미션이 있다면 앱을 사용할 수 없는 이유를 설명해주고 앱을 종료합니다.2 가지 경우가 있습니다.

                if (ActivityCompat.shouldShowRequestPermissionRationale(this, REQUIRED_PERMISSIONS[0])
                        || ActivityCompat.shouldShowRequestPermissionRationale(this, REQUIRED_PERMISSIONS[1])) {

                    Toast.makeText(MainActivity.this, "퍼미션이 거부되었습니다. 앱을 다시 실행하여 퍼미션을 허용해주세요.", Toast.LENGTH_LONG).show();
                    finish();


                } else {

                    Toast.makeText(MainActivity.this, "퍼미션이 거부되었습니다. 설정(앱 정보)에서 퍼미션을 허용해야 합니다. ", Toast.LENGTH_LONG).show();

                }
            }

        }
    }

    public void checkRunTimePermission() {

        //런타임 퍼미션 처리
        // 1. 위치 퍼미션을 가지고 있는지 체크합니다.
        int hasFineLocationPermission = ContextCompat.checkSelfPermission(MainActivity.this,
                Manifest.permission.ACCESS_FINE_LOCATION);
        int hasCoarseLocationPermission = ContextCompat.checkSelfPermission(MainActivity.this,
                Manifest.permission.ACCESS_COARSE_LOCATION);


        if (hasFineLocationPermission == PackageManager.PERMISSION_GRANTED &&
                hasCoarseLocationPermission == PackageManager.PERMISSION_GRANTED) {

            // 2. 이미 퍼미션을 가지고 있다면
            // ( 안드로이드 6.0 이하 버전은 런타임 퍼미션이 필요없기 때문에 이미 허용된 걸로 인식합니다.)


            // 3.  위치 값을 가져올 수 있음


        } else {  //2. 퍼미션 요청을 허용한 적이 없다면 퍼미션 요청이 필요합니다. 2가지 경우(3-1, 4-1)가 있습니다.

            // 3-1. 사용자가 퍼미션 거부를 한 적이 있는 경우에는
            if (ActivityCompat.shouldShowRequestPermissionRationale(MainActivity.this, REQUIRED_PERMISSIONS[0])) {

                // 3-2. 요청을 진행하기 전에 사용자가에게 퍼미션이 필요한 이유를 설명해줄 필요가 있습니다.
                Toast.makeText(MainActivity.this, "이 앱을 실행하려면 위치 접근 권한이 필요합니다.", Toast.LENGTH_LONG).show();
                // 3-3. 사용자게에 퍼미션 요청을 합니다. 요청 결과는 onRequestPermissionResult에서 수신됩니다.
                ActivityCompat.requestPermissions(MainActivity.this, REQUIRED_PERMISSIONS,
                        PERMISSIONS_REQUEST_CODE);


            } else {
                // 4-1. 사용자가 퍼미션 거부를 한 적이 없는 경우에는 퍼미션 요청을 바로 합니다.
                // 요청 결과는 onRequestPermissionResult에서 수신됩니다.
                ActivityCompat.requestPermissions(MainActivity.this, REQUIRED_PERMISSIONS,
                        PERMISSIONS_REQUEST_CODE);
            }

        }

    }

    // 좌표를 주소로 변환해주는 메소드
    public String getCurrentAddress(double latitude, double longitude) {

        //지오코더... GPS를 주소로 변환
        Geocoder geocoder = new Geocoder(this, Locale.getDefault());

        List<Address> addresses;

        try {

            addresses = geocoder.getFromLocation(
                    latitude,
                    longitude,
                    7);
        } catch (IOException ioException) {
            //네트워크 문제
            Toast.makeText(this, "지오코더 서비스 사용불가", Toast.LENGTH_LONG).show();
            return "지오코더 서비스 사용불가";
        } catch (IllegalArgumentException illegalArgumentException) {
            Toast.makeText(this, "잘못된 GPS 좌표", Toast.LENGTH_LONG).show();
            return "잘못된 GPS 좌표";

        }


        if (addresses == null || addresses.size() == 0) {
            Toast.makeText(this, "주소 미발견", Toast.LENGTH_LONG).show();
            return "주소 미발견";

        }

        Address address = addresses.get(0);
        return address.getAddressLine(0).toString() + "\n";

    }


    //여기부터는 GPS 활성화를 위한 메소드들
    public void showDialogForLocationServiceSetting() {

        AlertDialog.Builder builder = new AlertDialog.Builder(MainActivity.this);
        builder.setTitle("위치 서비스 비활성화");
        builder.setMessage("앱을 사용하기 위해서는 위치 서비스가 필요합니다.\n"
                + "위치 설정을 수정하실래요?");
        builder.setCancelable(true);
        builder.setPositiveButton("설정", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int id) {
                Intent callGPSSettingIntent
                        = new Intent(android.provider.Settings.ACTION_LOCATION_SOURCE_SETTINGS);
                startActivityForResult(callGPSSettingIntent, GPS_ENABLE_REQUEST_CODE);
            }
        });
        builder.setNegativeButton("취소", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int id) {
                dialog.cancel();
            }
        });
        builder.create().show();
    }


    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);

        switch (requestCode) {

            case GPS_ENABLE_REQUEST_CODE:

                //사용자가 GPS 활성 시켰는지 검사
                if (checkLocationServicesStatus()) {
                    if (checkLocationServicesStatus()) {

                        Log.d("@@@", "onActivityResult : GPS 활성화 되있음");
                        checkRunTimePermission();
                        return;
                    }
                }

                break;
        }
    }

    public boolean checkLocationServicesStatus() {
        LocationManager locationManager = (LocationManager) getSystemService(LOCATION_SERVICE);

        return locationManager.isProviderEnabled(LocationManager.GPS_PROVIDER)
                || locationManager.isProviderEnabled(LocationManager.NETWORK_PROVIDER);
    }

    //내가 원하는 위치를 찾아서 마커로 등록하는 버튼의 onClick을 구현해주었다.
    public LatLng LocationNumber(String str) {
        //구글의 Geocoder을 활용해 그 데이터의 정보를 가져온다.
        Geocoder coder = new Geocoder(getApplicationContext());
        //리스트에 담아주고,
        List<Address> list = null;
        try {
            list = coder.getFromLocationName(str, 1);
        } catch (IOException e) {
            e.printStackTrace();
        }
        //그 정보의 좌표값을 가져온다.
        Address addr = list.get(0);
        double lat = addr.getLatitude();
        double lng = addr.getLongitude();

        LatLng loca = new LatLng(lat, lng);

        return loca;
    }


    // 카카오 로그아웃 기능

    private void onClickLogout() {
        UserManagement.getInstance().requestLogout(new LogoutResponseCallback() {
            @Override
            public void onCompleteLogout() {
                Intent intent = new Intent(MainActivity.this , LoginActivity.class);
                intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TASK | Intent.FLAG_ACTIVITY_CLEAR_TOP);
                startActivity(intent);
                finish();
            }
        });
    }



}
