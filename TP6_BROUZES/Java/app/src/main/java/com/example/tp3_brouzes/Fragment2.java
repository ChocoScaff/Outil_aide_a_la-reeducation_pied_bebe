package com.example.tp3_brouzes;

import android.bluetooth.BluetoothSocket;
import android.media.MediaPlayer;
import android.os.Bundle;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;

import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/**
 * A simple {@link Fragment} subclass.
 * Use the {@link Fragment2#newInstance} factory method to
 * create an instance of this fragment.
 */
public class Fragment2 extends Fragment {

    // TODO: Rename parameter arguments, choose names that match
    // the fragment initialization parameters, e.g. ARG_ITEM_NUMBER
    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";

    // TODO: Rename and change types of parameters
    private String mParam1;
    private String mParam2;

    private int connected=0;

    public ProgressBar progressBar;
    protected byte[] buffer;

    private View vue;

    private Button start;

    public TextView textViewForce;

    public MediaPlayer mediaPlayer;

    public Fragment2() {
        // Required empty public constructor
    }

    /**
     * Use this factory method to create a new instance of
     * this fragment using the provided parameters.
     *
     * @param param1 Parameter 1.
     * @param param2 Parameter 2.
     * @return A new instance of fragment Fragment2.
     */
    // TODO: Rename and change types and number of parameters
    public static Fragment2 newInstance(String param1, String param2) {
        Fragment2 fragment = new Fragment2();
        Log.d("BTT", "new Fragment2");
        Bundle args = new Bundle();
        args.putString(ARG_PARAM1, param1);
        args.putString(ARG_PARAM2, param2);
        fragment.setArguments(args);
        return fragment;
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (getArguments() != null) {
            mParam1 = getArguments().getString(ARG_PARAM1);
            mParam2 = getArguments().getString(ARG_PARAM2);
        }
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        vue = inflater.inflate(R.layout.fragment_2, container, false);

        //progressBar = (ProgressBar) vue.findViewById(R.id.progressBar);
        //textViewForce = (TextView) vue.findViewById(R.id.indicateurforce);
        start = (Button) vue.findViewById(R.id.button1);
        Log.d("BTT", "On create View Fragment 2");
        Log.d("BTT", "ProgressBar =" + progressBar);


        start.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Log.d("BTT", "Progress Bar");
                if (progressBar != null && buffer.length > 1) {
                    progressBar.setProgress(buffer[1]);
                }
            }});

        return vue;
        //return inflater.inflate(R.layout.fragment_2, container, false);
    }
    protected void affichage() {
        String tab;
        Log.d("BTT", "Received sensor value in Fragment2: " + buffer[1]);
        //Log.d("BTT", "ProgressBar =" + progressBar);
        tab = "force " + buffer[1] + " N";
        if (buffer[1] > 65 && mediaPlayer != null && !mediaPlayer.isPlaying()) {
            Log.d("BTT", "Play sound");
            mediaPlayer.start();
        }
        if (textViewForce != null) {
            textViewForce.setText(tab);
        }
        if (progressBar != null) {
            Log.d("BTT", "Progress Bar");
            progressBar.setProgress(buffer[1]);
        }
    }



}