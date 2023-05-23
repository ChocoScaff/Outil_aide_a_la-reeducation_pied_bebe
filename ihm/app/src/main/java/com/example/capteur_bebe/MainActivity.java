package com.example.capteur_bebe;

import android.os.Bundle;

import androidx.appcompat.app.AppCompatActivity;
import androidx.annotation.NonNull;
import androidx.appcompat.app.ActionBarDrawerToggle;
//import androidx.appcompat.app.AppCompatActivity;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;

import android.view.MenuItem;
import android.view.View;
import android.widget.Button;

public class MainActivity extends AppCompatActivity {

    public DrawerLayout drawerLayout;
    public ActionBarDrawerToggle actionBarDrawerToggle;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        drawerLayout = findViewById(R.id.my_drawer_layout);
        actionBarDrawerToggle = new ActionBarDrawerToggle(this, drawerLayout, R.string.nav_open, R.string.nav_close);
        drawerLayout.addDrawerListener(actionBarDrawerToggle);
        actionBarDrawerToggle.syncState();
        Fragment1 fragment1;
        setContentView(R.layout.activity_main);
        fragment1 = new Fragment1();
        setContentView(R.layout.activity_main);
        Button start = findViewById(R.id.button1);
        Button stop = findViewById(R.id.button2);
        //getSupportActionBar().setDisplayHomeAsUpEnabled(ture);
        start.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

            }
        });
        stop.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

            }

        });
    }
            @Override
            public boolean onOptionsItemSelected (@NonNull MenuItem item){

            if (actionBarDrawerToggle.onOptionsItemSelected(item)) {
                return true;

            }
            return super.onOptionsItemSelected(item);
        }

    {

    }
        private void lanceFragment (Fragment1 fragment1){
            FragmentManager fm =getSupportFragmentManager();
        FragmentTransaction ft= fm.beginTransaction();
        ft.replace(R.id.frameLayout,fragment1);
        ft.addToBackStack(null);
        ft.commit();
        }


}
