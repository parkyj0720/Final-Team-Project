package com.example.boardca_app.ui.community;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;

import com.example.boardca_app.R;

public class FragAskBoard extends Fragment {

    private ViewGroup viewGroup;

    public static FragAskBoard newInstance(){
        FragAskBoard fragAskBoard = new FragAskBoard();
        return fragAskBoard;
    }

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        viewGroup = (ViewGroup) inflater.inflate(R.layout.comm_askboard, container, false);

        return viewGroup;
    }
}
