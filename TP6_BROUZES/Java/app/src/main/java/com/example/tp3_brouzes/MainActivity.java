package com.example.tp3_brouzes;

import androidx.appcompat.app.ActionBarDrawerToggle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.fragment.app.Fragment;

import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.widget.Toast;

import com.google.android.material.navigation.NavigationView;

public class MainActivity extends AppCompatActivity {

    //Fragment frag1;
    //Fragment frag2;
    private DrawerLayout tiroir;
    private NavigationView vueNav;
    private ActionBarDrawerToggle toggle;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        //frag1 = new Fragment1();

        // Association des objets avec les vues
        vueNav = (NavigationView) findViewById(R.id.navigationvue);
        tiroir = (DrawerLayout) findViewById(R.id.drawerLayout);
        toggle = new ActionBarDrawerToggle(this, tiroir, R.string.open,
                R.string.close);
    // Configuration du « listener » d’une action sur le menu
        tiroir.addDrawerListener(toggle);
        toggle.syncState();
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    // Lancement du « listener » d’une action sur le menu
        vueNav.setNavigationItemSelectedListener(new NavigationView.OnNavigationItemSelectedListener() {
            // balayage des rubriques du menu

         @Override
         public boolean onNavigationItemSelected(MenuItem item) {
             switch (item.getItemId()) {
                 case R.id.item1:
                     Toast toast = Toast.makeText(getApplicationContext(), "Home", Toast.LENGTH_SHORT);
                     toast.show();
                     break;
             }
             return true;
         }
        });
    }



    public void onClickPage1(View view)
    {
        lanceFragment(new Fragment1());
    }

    public void onClickPage2(View view)
    {
        lanceFragment(new Fragment2());
    }

    private void lanceFragment(Fragment fragment)
    {
        FragmentManager fm =getSupportFragmentManager();
        FragmentTransaction ft= fm.beginTransaction();
        ft.replace(R.id.frame,fragment);
        ft.addToBackStack(null);
        ft.commit();
    }
}