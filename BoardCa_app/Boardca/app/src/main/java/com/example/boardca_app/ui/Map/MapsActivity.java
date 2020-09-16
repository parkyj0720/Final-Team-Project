package com.example.boardca_app.ui.Map;

import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.FragmentActivity;

import android.Manifest;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.PackageManager;
import android.location.Address;
import android.location.Geocoder;
import android.location.Location;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;

import com.example.boardca_app.R;
import com.google.android.gms.location.FusedLocationProviderClient;
import com.google.android.gms.location.LocationServices;
import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.OnMapReadyCallback;
import com.google.android.gms.maps.SupportMapFragment;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.tasks.OnSuccessListener;

import java.io.IOException;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.Stack;
//import JTS; 음.... jts라는 라이브러리를 활용하면 간단하게 영역 외부, 내부 판단이 가능할 것 같은데,
//지금은 어떤식으로 활용하는지 모르겠어서, 우선 알고리즘을 직접 구현하자.

public class MapsActivity extends FragmentActivity implements OnMapReadyCallback, GoogleMap.OnMarkerClickListener, GoogleMap.OnInfoWindowClickListener {

    private static final int REQUEST_CODE_PERMISSIONS = 1000;
    public GoogleMap mMap;
    private FusedLocationProviderClient mFusedLocationClient;
    Marker mMarker;
    private EditText editPlace;
    private boolean boundaryIsOn = false;
    //마지막 활용을 위해서 변수 선언

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_maps);
//        editPlace = findViewById(R.id.editPlace);
        // Obtain the SupportMapFragment and get notified when the map is ready to be used.
        SupportMapFragment mapFragment = (SupportMapFragment) getSupportFragmentManager()
                .findFragmentById(R.id.map_view);
        mapFragment.getMapAsync(this);

        mFusedLocationClient = LocationServices.getFusedLocationProviderClient(this);

    }

    /**
     * Manipulates the map once available.
     * This callback is triggered when the map is ready to be used.
     * This is where we can add markers or lines, add listeners or move the camera. In this case,
     * we just add a marker near Sydney, Australia.
     * If Google Play services is not installed on the device, the user will be prompted to install
     * it inside the SupportMapFragment. This method will only be triggered once the user has
     * installed Google Play services and returned to the app.
     */
    @Override
    public void onMapReady(GoogleMap googleMap) {
        mMap = googleMap;

        // Add a marker in Sydney and move the camera
        LatLng sydney = new LatLng(37.2664398, 126.9994077);
        mMap.addMarker(new MarkerOptions().position(sydney).title("it's me!!"));
        mMap.moveCamera(CameraUpdateFactory.newLatLng(sydney));
        mMap.animateCamera(CameraUpdateFactory.zoomTo(12.0f));
        mMap.getUiSettings().setZoomControlsEnabled(true);

//       mMap.setOnMarkerClickListener(this);
        //마커 클릭에 대한 리스너를 등록한다.
//        mMap.setOnInfoWindowClickListener(new GoogleMap.OnInfoWindowClickListener() {
//            @Override
//            public void onInfoWindowClick(final Marker marker) {
//                final GoogleMap.OnInfoWindowClickListener context = this;
//                AlertDialog.Builder alertDialogBuilder = new AlertDialog.Builder((Context) context);
//
//                alertDialogBuilder.setTitle("마커 삭제");
//
//                alertDialogBuilder
//                        .setMessage("마커를 삭제하시겠습니까?")
//                        .setCancelable(false)
//                        .setPositiveButton("삭제",
//                                new DialogInterface.OnClickListener() {
//                                    public void onClick(
//                                            DialogInterface dialog, int id) {
//                                        marker.remove();
//                                    }
//                                })
//                        .setNegativeButton("취소",
//                                new DialogInterface.OnClickListener() {
//                                    public void onClick(
//                                            DialogInterface dialog, int id) {
//                                        // 다이얼로그를 취소한다
//                                        dialog.cancel();
//                                    }
//                                });
//
//
//                // 다이얼로그 생성
//                AlertDialog alertDialog = alertDialogBuilder.create();
//
//                // 다이얼로그 보여주기
//                alertDialog.show();
//            }
//        });
        mMap.setOnInfoWindowClickListener(this);
    }

    @Override
    public void onInfoWindowClick(Marker marker) {
        Toast.makeText(this, "Info window clicked",
                Toast.LENGTH_SHORT).show();
    }


    //gps버튼을 누르면 내 위치로 이동하도록 만들어준다.
    @RequiresApi(api = Build.VERSION_CODES.M)
    public void onLastLocationButtonClicked(View view) {
        //gps버튼을 눌렀을 때, 권한이 획득되었는지 확인하자.
        if (checkSelfPermission(Manifest.permission.ACCESS_FINE_LOCATION) != PackageManager.PERMISSION_GRANTED && checkSelfPermission(Manifest.permission.ACCESS_COARSE_LOCATION) != PackageManager.PERMISSION_GRANTED) {
            // TODO: Consider calling
            //    Activity#requestPermissions
            // here to request the missing permissions, and then overriding
            //   public void onRequestPermissionsResult(int requestCode, String[] permissions,
            //                                          int[] grantResults)
            // to handle the case where the user grants the permission. See the documentation
            // for Activity#requestPermissions for more details.
            ActivityCompat.requestPermissions(this,new String[] {Manifest.permission.ACCESS_FINE_LOCATION, Manifest.permission.ACCESS_COARSE_LOCATION}, REQUEST_CODE_PERMISSIONS);
            return;
        }
        mFusedLocationClient.getLastLocation().addOnSuccessListener(this, new OnSuccessListener<Location>() {
            @Override
            public void onSuccess(Location location) {
                if(location != null){
                    LatLng myLocation = new LatLng(location.getLatitude(), location.getLongitude());
                    mMap.addMarker(new MarkerOptions().position(myLocation).title("현재 위치").snippet(location.getLatitude() + "/" + location.getLongitude()));
                    mMap.moveCamera(CameraUpdateFactory.newLatLng(myLocation));
                }
                else{
//                    Toast.makeText(this,"권한 체크 거부됨",Toast.LENGTH_SHORT).show();
                    mMap.animateCamera(CameraUpdateFactory.zoomTo(10.0f));
                }
            }
        });

    }

    @RequiresApi(api = Build.VERSION_CODES.M)
    @Override
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        switch (requestCode){
            //만일 사용자가 요청을 거부하였다면, 토스트 메시지를 띄운다.
            case REQUEST_CODE_PERMISSIONS:
                if (checkSelfPermission(Manifest.permission.ACCESS_FINE_LOCATION) != PackageManager.PERMISSION_GRANTED && checkSelfPermission(Manifest.permission.ACCESS_COARSE_LOCATION) != PackageManager.PERMISSION_GRANTED){
                    Toast.makeText(this,"권한 체크 거부됨",Toast.LENGTH_SHORT).show();
                }
        }

    }

    public void moveMainActivity(View view) {
        //뒤로가기 버튼으로 메뉴로 귀환시킨다.
        super.onBackPressed();
    }


    //내가 원하는 위치를 찾아서 마커로 등록하는 버튼의 onClick을 구현해주었다.
    public void searchButtonClicked(View view) {
        //찾는 위치는 editText에 담겨있고, 그 데이터를 가져온다.
        String place = editPlace.getText().toString();
        //구글의 Geocoder을 활용해 그 데이터의 정보를 가져온다.
        Geocoder coder = new Geocoder(getApplicationContext());
        //리스트에 담아주고,
        List<Address> list = null;
        try{
            list = coder.getFromLocationName(place,1);
        } catch(IOException e){
            e.printStackTrace();
        }
        //그 정보의 좌표값을 가져온다.
        Address addr = list.get(0);
        double lat = addr.getLatitude();
        double lng = addr.getLongitude();
        //이제 등록을 하여서
        LatLng geoPoint = new LatLng(lat,lng);
        //카메라를 줌해주고
        mMap.animateCamera(CameraUpdateFactory.newLatLngZoom(geoPoint, 15));
        //마커를 등록해준다.
        MarkerOptions marker = new MarkerOptions();
        marker.position(geoPoint);
        marker.title(place).snippet(lat + "/" + lng);
        mMap.addMarker(marker);
    }

    //마커가 클릭되었을때, 마커를 지우기 위해서 만들어 주었지만, 활용하기 까다로워 패스하였다.
    @Override
    public boolean onMarkerClick(final Marker marker) {
        //builder 안에 사용하기 위해서 선언을 하기는 하였지만, 쓰임세를 잘 모르겠다....
//        final Context context = this;
//        AlertDialog.Builder alertDialogBuilder = new AlertDialog.Builder(context);
//
//        alertDialogBuilder.setTitle("마커 삭제");
//
//        alertDialogBuilder
//                .setMessage("마커를 삭제하시겠습니까?")
//                .setCancelable(false)
//                .setPositiveButton("삭제",
//                        new DialogInterface.OnClickListener() {
//                            public void onClick(
//                                    DialogInterface dialog, int id) {
//                                marker.remove();
//                            }
//                        })
//                .setNegativeButton("취소",
//                        new DialogInterface.OnClickListener() {
//                            public void onClick(
//                                    DialogInterface dialog, int id) {
//                                // 다이얼로그를 취소한다
//                                dialog.cancel();
//                            }
//                        });
//        AlertDialog.Builder alertDialogBuilder2 = new AlertDialog.Builder(context);
//
//        alertDialogBuilder2.setTitle("마커 등록");
//
//        alertDialogBuilder2
//                .setMessage("경계에 등록 하시겠습니까?")
//                .setCancelable(false)
//                .setPositiveButton("등록",
//                        new DialogInterface.OnClickListener() {
//                            public void onClick(
//                                    DialogInterface dialog, int id) {
//                                marker.remove();
//                            }
//                        })
//                .setNegativeButton("취소",
//                        new DialogInterface.OnClickListener() {
//                            public void onClick(
//                                    DialogInterface dialog, int id) {
//                                // 다이얼로그를 취소한다
//                                dialog.cancel();
//                            }
//                        });
//
//
//        // 다이얼로그 생성
//        AlertDialog alertDialog = alertDialogBuilder.create();
//        AlertDialog alertDialog2 = alertDialogBuilder2.create();
//
//// 다이얼로그 보여주기
//        alertDialog.show();
//// 다이얼로그 보여주기
//        alertDialog2.show();

        return true;
    }



    //이제 마지막이다. convex hull 알고리즘을 활용해보았다.
    //http://woowabros.github.io/experience/2018/03/31/hello-geofence.html(이 부분을 참고하면, 비슷한 방식의 문제해결 방법을 볼 수 있다.)
    static int N = 0;
    static Point[] POINTS = new Point[20];

    @RequiresApi(api = Build.VERSION_CODES.M)
    public void jugementClicked(View view) {
        //클릭할때마다 초기화를 해주자.
        POINTS = new Point[20];
        N = 0;
        //나의 현재 위치를 가져오자.
        if (checkSelfPermission(Manifest.permission.ACCESS_FINE_LOCATION) != PackageManager.PERMISSION_GRANTED && checkSelfPermission(Manifest.permission.ACCESS_COARSE_LOCATION) != PackageManager.PERMISSION_GRANTED) {
            ActivityCompat.requestPermissions(this,new String[] {Manifest.permission.ACCESS_FINE_LOCATION, Manifest.permission.ACCESS_COARSE_LOCATION}, REQUEST_CODE_PERMISSIONS);
            return;
        }
        mFusedLocationClient.getLastLocation().addOnSuccessListener(this, new OnSuccessListener<Location>() {
            @Override
            public void onSuccess(Location location) {
                if(location != null){
                    //가져온 위치를 배열에 저장한다.
                    POINTS[N++] = new Point(location.getLatitude() * 10000, location.getLongitude()*10000);
                }
                else{
                    mMap.animateCamera(CameraUpdateFactory.zoomTo(10.0f));
                }
            }
        });


        //내 위치는 따로 저장해준다.
        Point MY_POINTS = POINTS[0];
        //y를 우선으로 '/'처럼 아래에서 위로 쭉 정렬을 해준다.
        Arrays.sort(POINTS,0 , N, new Comparator<Point>() {
            @Override
            public int compare(Point a, Point b) {
                if (a.y != b.y) {
                    if(a.y < b.y){
                        return -1;
                    }
                    else{
                        return 1;
                    }
                }
                if(a.x < b.x)
                    return -1;
                return 1;
            }
        });

        //이제 0을 기준으로 상대 위치를 새롭게 정의해준다.(이를 위해서 아래를 우선적으로 정렬한 것이다.
        for (int i = 1; i < N; i++) {
            POINTS[i].p = POINTS[i].x - POINTS[0].x;
            POINTS[i].q = POINTS[i].y - POINTS[0].y;
        }

        //이제 기준점 0 을 제외한 것들을 상대위치를 활용하여 정렬
        Arrays.sort(POINTS,1 , N-1, new Comparator<Point>() {
            @Override
            public int compare(Point a, Point b) {
                if(a.q*b.p != a.p*b.q){
                    if(a.q*b.p < a.p*b.q)
                        return -1;
                    else
                        return 1;
                }
                if (a.y != b.y) {
                    if(a.y < b.y){
                        return -1;
                    }
                    else{
                        return 1;
                    }
                }
                if(a.x < b.x)
                    return -1;
                return 1;
            }
        });

        //스택에는 데이터를 절약하기 위해서 index만 담아준다.
        Stack<Integer> stack = new Stack<>();
        stack.add(0);
        stack.add(1);

        //모든 데이터가 스택에 들어갈 수 있도록 전체 반복
        for (int i = 2; i < N; i++) {
            //사이즈가 2보다 크면
            while(stack.size() >= 2){
                int first = stack.pop();
                int second = stack.peek();
                //들어있는 점들을 확인하여서 가장 외부의 점인지를 확인한다.
                long ccw = find_ccw(POINTS[first], POINTS[second], POINTS[i]);
                if (ccw > 0) {
                    //맞으면 stack에 담아준다.
                    stack.add(first);
                    break;
                }
            }
            stack.add(i);
        }

        //이제 나의 위치가 영역의 내부인지 외부인지 확인을 해주자.
        boolean isInside = true;
        for(int i=0;i<stack.size();i++){
            if(POINTS[stack.get(i)].x == MY_POINTS.x && POINTS[stack.get(i)].y == MY_POINTS.y){
                isInside = false;
            }
        }


        //아래는 위의 bool 값을 활용해서 메시지 창을 띄우는 부분이다.
        if(isInside){
            final Context context = this;
            AlertDialog.Builder alertDialogBuilder = new AlertDialog.Builder(context);

            alertDialogBuilder.setTitle("위험경보");

            alertDialogBuilder
                    .setMessage("위험지역에 위치하였습니다.")
                    .setCancelable(false)
                    .setPositiveButton("삭제",
                            new DialogInterface.OnClickListener() {
                                public void onClick(
                                        DialogInterface dialog, int id) {
                                    dialog.cancel();
                                }
                            })
                    .setNegativeButton("취소",
                            new DialogInterface.OnClickListener() {
                                public void onClick(
                                        DialogInterface dialog, int id) {
                                    // 다이얼로그를 취소한다
                                    dialog.cancel();
                                }
                            });

            // 다이얼로그 생성
            AlertDialog alertDialog = alertDialogBuilder.create();
            alertDialog.show();
        }
        else{
            final Context context = this;
            AlertDialog.Builder alertDialogBuilder = new AlertDialog.Builder(context);

            alertDialogBuilder.setTitle("경보 아님");

            alertDialogBuilder
                    .setMessage("경보가 아니에요")
                    .setCancelable(false)
                    .setPositiveButton("삭제",
                            new DialogInterface.OnClickListener() {
                                public void onClick(
                                        DialogInterface dialog, int id) {
                                    dialog.cancel();
                                }
                            })
                    .setNegativeButton("취소",
                            new DialogInterface.OnClickListener() {
                                public void onClick(
                                        DialogInterface dialog, int id) {
                                    // 다이얼로그를 취소한다
                                    dialog.cancel();
                                }
                            });

            // 다이얼로그 생성
            AlertDialog alertDialog = alertDialogBuilder.create();
            alertDialog.show();
        }
    }

    protected static long find_ccw(Point a, Point b, Point c) {
        return (long)(b.x - a.x) * (long)(c.y - a.y) - (long)(c.x - a.x) * (long)(b.y - a.y);
    }

    static class Point {
        long x, y;
        //기준점으로부터의 상대 위치
        long p,q;

        public Point(double x, double y) {
            this.x = (long) x;
            this.y = (long) y;
            p=1;
            q=0;
        }

        public Point(double x, double y, long p, long q){
            this.x = (long) x;
            this.y = (long) y;
            this.p=p;
            this.q=q;
        }

        public Point(long x, long y) {
            this.x = x;
            this.y = y;
            p=1;
            q=0;
        }
    }
}