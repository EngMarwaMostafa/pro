import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import '../controllers/offers_controller.dart';

class ControlBindings extends Bindings{
  @override
  void dependencies() {
   Get.put<OffersController>(OffersController());
  }

}