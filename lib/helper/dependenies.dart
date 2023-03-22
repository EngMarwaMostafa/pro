import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nebtton/controllers/register_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../api/api/api_client.dart';
import '../api/api/repo/user_repo.dart';
import '../api/api/repo/uth_repo.dart';
import '../controllers/signup_controller.dart';
import '../controllers/cart_controller.dart';
import '../controllers/user_controller.dart';
import '../utils/app_constants.dart';

Future<void> init()async {
  final sharedPreferences = await SharedPreferences.getInstance();

  Get.lazyPut(() => sharedPreferences);

  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL, sharedPreferences: Get.find()));

  Get.lazyPut(() => AuthRepo(apiClient: Get.find(), sharedPreferences: Get.find()));
  Get.lazyPut(() => UserRepo(apiClient: Get.find()));



}