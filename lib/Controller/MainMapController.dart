import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MainMapController extends GetxController {
  // Declare your Rx variables here using Getx
  var markers = <Marker>[].obs;
  var busMarker = <Marker>[].obs;
  var busRotation = 0.0.obs;
}
