package com.example.nsa.calabashscrollresearch;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;

public class MainActivity extends AppCompatActivity {

    public void showListView(View view) {
        Intent i = new Intent(getApplicationContext(), ListViewExample.class);
        startActivity(i);
    }

    public void showMyScrollView(View view) {
        Intent i = new Intent(getApplicationContext(), ScrollActivity.class);
        startActivity(i);
    }


    public void showMyHorizontalScrollView(View view) {
        Intent i = new Intent(getApplicationContext(), HorizontalScrollView.class);
        startActivity(i);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }
}
