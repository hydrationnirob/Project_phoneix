import 'dart:async';
import 'dart:typed_data';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:ui' as ui;
import 'package:location/location.dart';
import 'package:firebase_database/firebase_database.dart';

class MainMapController extends GetxController {
  // Add your controller logic here
}

class Oldmap extends StatefulWidget {
  const Oldmap({Key? key}) : super(key: key);

  static const CameraPosition _kLake = CameraPosition(
    bearing: 192.8334901395799,
    target: LatLng(24.361227885532394, 88.61714598288799),
    tilt: 30,
    zoom: 19.151926040649414,
  );

  @override
  State<Oldmap> createState() => _OldmapState();
}

class _OldmapState extends State<Oldmap> {
  late GoogleMapController mapController;
  late DatabaseReference _busReference;
  final MainMapController _mainMapController = Get.put(MainMapController());

  late BitmapDescriptor customIcon;
  late Uint8List busIcon = Uint8List(0);

  List<Marker> markers = [];

  List<LatLng> latLngs = [
    const LatLng(24.363558653731136, 88.60431191947981),
    const LatLng(24.361210388122878, 88.61718803734959),
    const LatLng(24.361458095587025, 88.6266096408241),
    const LatLng(24.399424590867437, 88.64523913340318),
    const LatLng(24.37950981247712, 88.56631375719422),
    const LatLng(24.3758093691388, 88.5931279511494),
    const LatLng(24.374563591146853, 88.60442728907037),
    const LatLng(24.408538427726278, 88.6085839488894),
  ];

  List<String> images = [
    'images/3448339.png',
    'images/3448339.png',
    'images/3448339.png',
    'images/university-5569231-4655964.png',
    'images/3448339.png',
    'images/3448339.png',
    'images/3448339.png',
    'images/3448339.png'
  ];


  void getPermission() async {
    Location location = Location();

    bool serviceEnabled;
    PermissionStatus permissionGranted;

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return;
      }
    }

    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
  }

  @override
  void initState() {
    super.initState();
    // Load marker images and data
    loadData();
    // Request location permission
    getPermission();

    // Initialize Firebase Realtime Database reference
    _busReference = FirebaseDatabase.instance.ref('Current_Location').child('123');

    // Start listening for bus updates
    _startLocationUpdates();

  }

  // Add a method to start listening for bus updates
  void _startLocationUpdates() {
    print(_busReference.key);
    print('Listening for bus updates');
    try{
      print("try");
      _busReference.onValue.listen((event) {
        final data = event.snapshot.value as Map<dynamic, dynamic>;
        final lat = data['latitude'] as double;
        final lng = data['longitude'] as double;
        final busLatLng = LatLng(lat, lng);
        print('Bus location updated: $busLatLng');
        print("trying...........");

      }

      );
    }catch(e){
      print(e);

    }

  }










  Future<Uint8List> getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(
      data.buffer.asUint8List(),
      targetHeight: width,
    );
    ui.FrameInfo frameInfo = await codec.getNextFrame();
    return (await frameInfo.image.toByteData(format: ui.ImageByteFormat.png))!
        .buffer
        .asUint8List();
  }









  loadData() async {
    busIcon = await getBytesFromAsset('images/3448339.png', 120);

    for (int i = 0; i < images.length; i++) {
      final Uint8List markerIcon = await getBytesFromAsset(images[i], 120);
      markers.add(
        Marker(
          markerId: MarkerId(i.toString()),
          icon: BitmapDescriptor.fromBytes(markerIcon),
          position: latLngs[i],
          infoWindow: InfoWindow(
            title: 'Bus Stop: $i',
          ),
        ),
      );
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(

        onPressed: () async {
          _startLocationUpdates();
          print('My Location button pressed');
          // Get the current position of the device
          LocationData locationData = await Location.instance.getLocation();
          LatLng latLng = LatLng(locationData.latitude!, locationData.longitude!);

          // Move the map camera to the current position
          mapController.animateCamera(CameraUpdate.newCameraPosition(
            CameraPosition(
              target: latLng,
              zoom: 18,
            ),
          ));
        },
        child: const Icon(Icons.my_location),
      ),
      body: GoogleMap(
        zoomControlsEnabled: false,
        myLocationButtonEnabled: true,
        myLocationEnabled: true,
        compassEnabled: false,
        mapType: MapType.normal,
        initialCameraPosition: Oldmap._kLake,
        onMapCreated: (GoogleMapController controller) {
          mapController = controller;
        },
        markers: <Marker>{...markers},
      ),
    );
  }
}
