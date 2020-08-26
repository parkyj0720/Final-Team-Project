package com.example.boardca_app.ui.Map;

import android.os.Bundle;

import androidx.fragment.app.FragmentActivity;

import com.example.boardca_app.R;
import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.OnMapReadyCallback;
import com.google.android.gms.maps.SupportMapFragment;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MarkerOptions;

public class MapsActivity extends FragmentActivity implements OnMapReadyCallback {

    private GoogleMap mMap2;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_maps);
        SupportMapFragment mapFragment = (SupportMapFragment) getSupportFragmentManager()
                .findFragmentById(R.id.map);
        mapFragment.getMapAsync(this);
    }

    @Override
    public void onMapReady(GoogleMap googleMap) {
        mMap2 = googleMap;

        LatLng location = new LatLng(37.478909, 126.878920);
        mMap2.addMarker(new MarkerOptions()
                .position(location)
                .title("인재개발원"));
        mMap2.animateCamera(CameraUpdateFactory.newLatLngZoom(location,15));
    }
}
