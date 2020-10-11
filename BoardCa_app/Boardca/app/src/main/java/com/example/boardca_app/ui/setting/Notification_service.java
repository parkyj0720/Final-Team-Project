package com.example.boardca_app.ui.setting;

import android.annotation.SuppressLint;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;

import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;

import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;

import com.example.boardca_app.MainActivity;
import com.example.boardca_app.R;

public class Notification_service extends Service {
    @Nullable
    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }


    @Override
    public void onCreate() {
        Log.d("service", "onCreate 실행");
        super.onCreate();
    }

    @Override
    public void onDestroy() {
        Log.d("service", "onDestroy 실행");
        //mRunning = false;
        super.onDestroy();
    }



    private Handler mHandler = new Handler() {

        public void handleMessage(Message msg) {

            NotificationManager manager = (NotificationManager) getSystemService(NOTIFICATION_SERVICE);
            NotificationCompat.Builder builder =
                    new NotificationCompat.Builder(Notification_service.this);

            builder.setSmallIcon(R.drawable.ic_arrow_back_black)
                    .setContentTitle("알림")
                    .setContentText("보드카는 건전한 술문화를 추구합니다!")
                    .setAutoCancel(true) // 알림바에서 자동 삭제

                    .setVibrate(new long[]{1000, 2000, 1000, 3000, 1000, 4000});

            // autoCancel : 한번 누르면 알림바에서 사라진다.
            // vibrate : 쉬고, 울리고, 쉬고, 울리고... 밀리세컨
            // 진동이 되려면 AndroidManifest.xml에 진동 권한을 줘야 한다.

            // 알람 클릭시 MainActivity를 화면에 띄운다.
            Intent intent = new Intent(getApplicationContext(), MainActivity.class);

            @SuppressLint("WrongConstant") PendingIntent pIntent = PendingIntent.getActivity(getApplicationContext()
                    , 0
                    , intent
                    , Intent.FLAG_ACTIVITY_BROUGHT_TO_FRONT);

            builder.setContentIntent(pIntent);
            manager.notify(1, builder.build());
        }
    };

//setSmallIcon : 푸시 알림 왼쪽 그림
//setTicker : 알람 발생시 잠깐 나오는 텍스트
//setWhen : 푸시 알림 시간 miliSecond 단위 설정
//setNumber : 확인하지 않은 알림 개수 표시 설정
//setContetnTitle : 푸시 알림 상단 텍스트(제목)
//setContentText : 푸시 알림 내용
//setDefaults : 푸시 알림 발생시 진동, 사운드 등 설정
//setContentIntent : 푸시 알림 터치시 실행할 작업 인텐트 설정
//setAutoCancel : 푸시 알림 터치시 자동 삭제 설정
//setOngoing : 푸시 알림을 지속적으로 띄울 것인지 설정


protected boolean mRunning;

// 제일 중요한 메서드! (서비스 작동내용을 넣어준다.)
@Override
public int onStartCommand(Intent intent, int flags, int startId) {
        Log.d("service","onStartCommand 실행");
final int time = intent.getIntExtra("time", 0);
        //Toast.makeText(this, "안녕~ 난 서비스 : "+time, 0).show();
        // handler 통한 Thread 이용
        new Thread(new Runnable() {

@Override
public void run() {
        mRunning = true;
        while(mRunning) {
        SystemClock.sleep(time*1000);
        mHandler.sendEmptyMessage(0);
                }
            }
        }).start();
        return START_STICKY_COMPATIBILITY;
        }
}

