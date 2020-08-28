package com.example.boardca_app.ui.community;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;

import com.example.boardca_app.R;

public class FragtipBoard extends Fragment {

    private View view;

    public static FragtipBoard newInstance(){
        FragtipBoard fragtipBoard= new FragtipBoard();
        return fragtipBoard;
    }



    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        view = inflater.inflate(R.layout.comm_tipboard, container, false);
        return view;
    }
}
