import 'package:get/get.dart';

import 'Scaren/MapScreen/HomeMapScreen.dart';
import 'Scaren/NavBar.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {

      Get.put(NevController());
      Get.put(GetMaterialController());


  }
}