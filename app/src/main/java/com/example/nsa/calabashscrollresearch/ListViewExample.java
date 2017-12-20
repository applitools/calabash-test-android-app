package com.example.nsa.calabashscrollresearch;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.ArrayAdapter;
import android.widget.ListView;

import java.lang.reflect.Array;

public class ListViewExample extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_list_view_example);

        ListView lv = (ListView)findViewById(R.id.my_list_view);

        String[] list = {"list item 1", "list item 2", "list item 3", "list item 4", "list item 5", "list item 6", "list item 7", "list item 8"};
        ArrayAdapter<String> adapter = new ArrayAdapter<String>(this, android.R.layout.simple_list_item_1, list);
        lv.setAdapter(adapter);
    }
}
