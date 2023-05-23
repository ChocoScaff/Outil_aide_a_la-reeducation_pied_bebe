package com.example.capteur_bebe;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;

import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;

import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

/**
 * A simple {@link Fragment} subclass.
 * Use the {@link Fragment1#newInstance} factory method to
 * create an instance of this fragment.
 */
public class Fragment1 extends Fragment {
    private BluetoothAdapter mBluetoothAdapter; // objets pour manipuler le BT
    private BluetoothManager mBluetoothManager;
    private PackageManager packageManager;
    private Integer interfaceON = 1; // 4 drapeaux pour valider des étapes
    private Integer interfaceOK = 0;
    private Integer appareilConnecte = 0;
    private Integer autorisationConnexion = 1;
    //public static final String BLUETOOTH;
    private View vue;
    // TODO: Rename parameter arguments, choose names that match
    // the fragment initialization parameters, e.g. ARG_ITEM_NUMBER
    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";

    // TODO: Rename and change types of parameters
    private String mParam1;
    private String mParam2;

    public Fragment1() {
        // Required empty public constructor
    }

    /**
     * Use this factory method to create a new instance of
     * this fragment using the provided parameters.
     *
     * @param param1 Parameter 1.
     * @param param2 Parameter 2.
     * @return A new instance of fragment Fragment1.
     */
    // TODO: Rename and change types and number of parameters
    public static Fragment1 newInstance(String param1, String param2) {
        Fragment1 fragment = new Fragment1();
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
        BluetoothManager mBluetoothManager = (BluetoothManager)
                getActivity().getSystemService(Context.BLUETOOTH_SERVICE);
        mBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
        if (mBluetoothAdapter == null) {
// Device doesn't support Bluetooth
            Toast.makeText(getActivity(), "La machine ne possède pas le Bluetooth",
                    Toast.LENGTH_SHORT).show();
            interfaceOK = 0;
        } else {
            interfaceOK = 1;
            Toast.makeText(getActivity(), "interface BT existe",
                    Toast.LENGTH_SHORT).show();
        }

        // Inflate the layout for this fragment
        Button lanceBT = (Button) vue.findViewById(R.id.button1); // associé au bouton

        lanceBT.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (interfaceOK == 1) {
                    if (!mBluetoothAdapter.isEnabled()) {
                        Intent enableBtIntent = new Intent(BluetoothAdapter.ACTION_REQUEST_ENABLE);
                        Log.i("BTT", "1");
                        if (ActivityCompat.checkSelfPermission(getContext(), android.Manifest.permission.BLUETOOTH_CONNECT) != PackageManager.PERMISSION_GRANTED) {
                            // TODO: Consider calling
                            //    ActivityCompat#requestPermissions
                            // here to request the missing permissions, and then overriding
                            //   public void onRequestPermissionsResult(int requestCode, String[] permissions,
                            //                                          int[] grantResults)
                            // to handle the case where the user grants the permission. See the documentation
                            // for ActivityCompat#requestPermissions for more details.
                            return;
                        }
                        getActivity().startActivityForResult(enableBtIntent, 10);
                        Log.i("BTT", "2");
                    } else {
                        interfaceON = 1; // le bluetooth est allumé
                        Toast.makeText(getActivity(), "Bluetooth allumé",
                                Toast.LENGTH_SHORT).show();

                    }

                }

            }

        });
        TextView afficheBT = (TextView) vue.findViewById(R.id.button2);// associé au TextView
        return inflater.inflate(R.layout.fragment_1, container, false);
    }

    @Override
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        Log.i("BT", "onActivityResult, requestCode: " + requestCode + ", resultCode: "
                + resultCode);
        if (resultCode != 0) {
            interfaceON = 1;
// Ici on pourrait ajouter de code
        } else interfaceON = 0;

    }

}
