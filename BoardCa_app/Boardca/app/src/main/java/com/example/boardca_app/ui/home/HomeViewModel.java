package com.example.boardca_app.ui.home;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;

public class HomeViewModel extends ViewModel {

    private MutableLiveData<String> mText;

    public HomeViewModel() {
        mText = new MutableLiveData<>();
        mText.setValue("보드카는 건전한 음주문화를 지향합니다.");
    }

    public LiveData<String> getText() {
        return mText;
    }
}