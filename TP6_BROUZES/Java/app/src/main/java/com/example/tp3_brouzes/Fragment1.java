package com.example.tp3_brouzes;

import android.Manifest;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothManager;
import android.bluetooth.BluetoothServerSocket;
import android.bluetooth.BluetoothSocket;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;

import androidx.annotation.RequiresApi;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;

import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Set;
import java.util.UUID;

/**
 * A simple {@link Fragment} subclass.
 * Use the {@link Fragment1#newInstance} factory method to
 * create an instance of this fragment.
 */
public class Fragment1 extends Fragment {

    // TODO: Rename parameter arguments, choose names that match
    // the fragment initialization parameters, e.g. ARG_ITEM_NUMBER
    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";

    // TODO: Rename and change types of parameters
    private String mParam1;
    private String mParam2;

    private int Active_BTr;
    private View vue;
    private Button Active_BT;
    private Button Connect_BT;
    private Button appareils;
    private Button efface_Liste;
    private ListView liste_appareils;


    TextView affichagePage1;

    private BluetoothAdapter mBluetoothAdapter; // objets pour manipuler le BT
    private BluetoothManager mBluetoothManager;
    private PackageManager packageManager;
    private Integer interfaceON = 1; // 4 drapeaux pour valider des étapes
    private Integer interfaceOK = 0;
    private Integer appareilConnecte = 0;
    private Integer autorisationConnexion = 1;
    private BluetoothSocket mmServerSocket;
    private BluetoothDevice mmthisDevice;
    String deviceName;
    String deviceHardwareAddress;

    String selectedItem;
    ArrayList pairedlist = new ArrayList();

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

    private final BroadcastReceiver receiver = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (BluetoothDevice.ACTION_FOUND.equals(action)) {
                // Discovery has found a device. Get the BluetoothDevice
                // object and its info from the Intent.
                BluetoothDevice device = intent.getParcelableExtra(BluetoothDevice.EXTRA_DEVICE);
                if (ActivityCompat.checkSelfPermission(getContext(), Manifest.permission.BLUETOOTH_CONNECT) != PackageManager.PERMISSION_GRANTED) {
                    // TODO: Consider calling
                    //    ActivityCompat#requestPermissions
                    // here to request the missing permissions, and then overriding
                    //   public void onRequestPermissionsResult(int requestCode, String[] permissions,
                    //                                          int[] grantResults)
                    // to handle the case where the user grants the permission. See the documentation
                    // for ActivityCompat#requestPermissions for more details.
                }
                deviceName = device.getName();
                deviceHardwareAddress = device.getAddress(); // MAC address
            }
        }
    };


    @RequiresApi(api = Build.VERSION_CODES.M)

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        //textView = (TextView);

        vue = inflater.inflate(R.layout.fragment_1, container, false);
        vue.findViewById(R.id.Id_text_page1);
        Log.i("BTT", "toto");

        if (ActivityCompat.checkSelfPermission(getContext(), Manifest.permission.BLUETOOTH_CONNECT) != PackageManager.PERMISSION_GRANTED) {
            // TODO: Consider calling
            //    ActivityCompat#requestPermissions
            // here to request the missing permissions, and then overriding
            //   public void onRequestPermissionsResult(int requestCode, String[] permissions,
            //                                          int[] grantResults)
            // to handle the case where the user grants the permission. See the documentation
            // for ActivityCompat#requestPermissions for more details.
        }

        Active_BT = (Button) vue.findViewById(R.id.Id_Lance_BT);
        Connect_BT = (Button) vue.findViewById(R.id.ID_Bluetooth_Connect);
        appareils = (Button) vue.findViewById(R.id.ID_liste_des_appareils);
        affichagePage1 = (TextView) vue.findViewById((R.id.Id_text_page1));
        liste_appareils = (ListView) vue.findViewById(R.id.ID_list_view);
        efface_Liste = (Button) vue.findViewById(R.id.Id_Effacer_la_liste);

        mBluetoothManager = (BluetoothManager)
                getActivity().getSystemService(Context.BLUETOOTH_SERVICE);

        mBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
        mBluetoothAdapter.getBondedDevices();

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

        appareils.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

                Log.i("BTT", "Liste des appareils");
                if (ActivityCompat.checkSelfPermission(getContext(), Manifest.permission.BLUETOOTH_CONNECT) != PackageManager.PERMISSION_GRANTED) {
                    // TODO: Consider calling
                    //    ActivityCompat#requestPermissions
                    // here to request the missing permissions, and then overriding
                    //   public void onRequestPermissionsResult(int requestCode, String[] permissions,
                    //                                          int[] grantResults)
                    // to handle the case where the user grants the permission. See the documentation
                    // for ActivityCompat#requestPermissions for more details.
                }
                Set<BluetoothDevice> pairedDevices = mBluetoothAdapter.getBondedDevices();

                if (pairedDevices.size() > 0) {
                    // There are paired devices. Get the name and address of each paired device.
                    for (BluetoothDevice device : pairedDevices) {
                        if (ActivityCompat.checkSelfPermission(getContext(), Manifest.permission.BLUETOOTH_CONNECT) != PackageManager.PERMISSION_GRANTED) {
                            // TODO: Consider calling
                            //    ActivityCompat#requestPermissions
                            // here to request the missing permissions, and then overriding
                            //   public void onRequestPermissionsResult(int requestCode, String[] permissions,
                            //                                          int[] grantResults)
                            // to handle the case where the user grants the permission. See the documentation
                            // for ActivityCompat#requestPermissions for more details.
                        }

                        //pairedlist.add(device.getName() + "\n" + device.getAddress());
                        pairedlist.add(0,device.getName() + "\n" + device.getAddress());

                        ArrayAdapter myArrayAadapter = new ArrayAdapter(getContext(), android.R.layout.simple_list_item_1, pairedlist);

                        liste_appareils.setAdapter(myArrayAadapter);    // lv_devlist est l'identificateur java de la ListView



                        //deviceName = device.getName();
                        //deviceHardwareAddress = device.getAddress(); // MAC address
                        //ArrayAdapter<String> adapter = new ArrayAdapter<>(this,
                        //        android.R.layout.simple_list_item_1, new list<String>());
                        //Log.i("BTT", device.getAddress());
                        //Log.i("BTT", device.getName());
                        //mmthisDevice = device;
                        //liste_appareils.

                    }
                }
            }
        });
        efface_Liste.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                liste_appareils.setAdapter(null);

            }
        });


        liste_appareils.setOnItemClickListener(new AdapterView.OnItemClickListener() {

            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                Object listItem = liste_appareils.getItemAtPosition(position);
                selectedItem = liste_appareils.getItemAtPosition(position).toString();

                String[] lines = selectedItem.split("\n");

                deviceName = lines[0];
                deviceHardwareAddress = lines[1];

                Log.i("BTT", deviceHardwareAddress);


            }
        });


        Active_BT.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (interfaceOK == 1) {
                    if (!mBluetoothAdapter.isEnabled()) {
                        Intent enableBtIntent = new Intent(BluetoothAdapter.ACTION_REQUEST_ENABLE);
                        Log.i("BTT", "1");

                        if (ActivityCompat.checkSelfPermission(getContext(), Manifest.permission.BLUETOOTH_CONNECT) != PackageManager.PERMISSION_GRANTED) {
                            // TODO: Consider calling
                            //    ActivityCompat#requestPermissions
                            // here to request the missing permissions, and then overriding
                            //   public void onRequestPermissionsResult(int requestCode, String[] permissions,
                            //                                          int[] grantResults)
                            // to handle the case where the user grants the permission. See the documentation
                            // for ActivityCompat#requestPermissions for more details.
                            Log.i("BTT", "4");
                            //return;
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
            /*
            @Override
            public void onActivityResult(int requestCode, int resultCode, Intent data) {
                super.onActivityResult(requestCode, resultCode,data);
                Log.i("BT", "onActivityResult, requestCode: " + requestCode + ", resultCode: "
                        + resultCode);
                if (resultCode !=0) {

                    interfaceON =1;
                    // Ici on pourrait ajouter de code
                }
                else interfaceON=0;
            }

             */

        });

        Connect_BT.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {



                Log.i("BTT", "Connect BT");
                BluetoothSocket tmp = null;

                try {
                    // MY_UUID is the app's UUID string, also used by the client code.

                    if (ActivityCompat.checkSelfPermission(getContext(), Manifest.permission.BLUETOOTH_CONNECT) != PackageManager.PERMISSION_GRANTED) {
                        // TODO: Consider calling
                        //    ActivityCompat#requestPermissions
                        // here to request the missing permissions, and then overriding
                        //   public void onRequestPermissionsResult(int requestCode, String[] permissions,
                        //                                          int[] grantResults)
                        // to handle the case where the user grants the permission. See the documentation
                        // for ActivityCompat#requestPermissions for more details.
                        //return;
                    }
                    tmp = mmthisDevice.createRfcommSocketToServiceRecord(UUID.fromString("00001101-0000-1000-8000-00805f9b34fb"));
                    Log.i("BTT", "bluetoothAdapter");
                } catch (IOException e) {
                    Log.e("BTT", "Socket's listen() method failed", e);
                }
                mmServerSocket = tmp;
            }




        });
        return vue;
    }

}