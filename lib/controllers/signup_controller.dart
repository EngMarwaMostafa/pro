
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:http/http.dart' as http;
import 'package:nebtton/base/show_custom_bar.dart';
import 'package:nebtton/routes/router_helper.dart';
import 'package:nebtton/view/widgets/custom_snacckbar.dart';
import '../view/widgets/loader.dart';



class SignupController extends GetxController {

  late TextEditingController
  nameController,
      emailController,
      passwordController;

  @override
  void onInit() {
    super.onInit();
    nameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  checkSignup() {
    if (nameController.text.isEmpty) {
      customSnackbar('Error', 'Name is required', 'error');
      return;
    }
    else if (emailController.text.isEmpty ||
        GetUtils.isEmail(emailController.text) == false) {
      customSnackbar('Error', 'Avalid Email is required', 'error');
      return;
    }
    else if (passwordController.text.isEmpty) {
      customSnackbar('Error', 'Password is required', 'error');
      return;
    } else {
      Get.showOverlay(asyncFunction: () => signup(), loadingWidget: Loader());
    }
  }

  signup() async{
    var response = await http.post(Uri.parse('https://elnamat.com/poems/eshop/api/buyers/register'),
        body:{
      'name':nameController.text,
      'email':emailController.text,
      'password':passwordController.text,
    });
    var res=await json.decode(response.body);
    print(response);
    if (response.statusCode == 200) {
     showCustomSnackbar('register sucess',title: 'Perfect');
      Get.offAllNamed(RouteHelper.getLoginPage());
    }else {
     showCustomSnackbar('Error',title: 'Error');
    }
  }

}

/*
class AuthController extends GetxController implements GetxService {
  final AuthRepo authRepo;

  AuthController({required this.authRepo});

  final dio = Dio();
  bool _isLoading = false;

  bool get isLoading => _isLoading;

 registration(String name, String email, String password) async {
    _isLoading = true;
    update();
    final response = await dio.post(
      "http://beautiheath.com/sub/eshop/api/buyers/register",
      data: {"name":name, "email": email, "password":password},
    );
   print(response.data);
  if (response.statusCode == 200) {
      Get.offAll(() => const LoginScreen());
     //  print(response);
    } else {
     // print(response);
    }
    _isLoading = true;
    update();
    }



  login(String email, String password) async {
    final sharedPreferences = await SharedPreferences.getInstance();

    final response = await dio
        .post("http://beautiheath.com/sub/eshop/api/buyers/login",
        data: {
          'email': email,
          'password': password,
         'device_token': 'fwfwfrw',
          'lang': 'sw'
        },
        );
    print(response.data);
    if (response.statusCode == 200) {
      Get.offAll(() => const MainHomeScreen());
    print(response.data);
     UserModel userModel = UserModel.fromJson(response.data);
     sharedPreferences.setString("token", userModel.data!.token!);
   } else {}
  }

  void saveUserEmailAndPassword(String name, String email, String password) {
    authRepo.saveUserEmailAndPassword(name, email, password);
  }

  bool userLoggedIn() {
    return authRepo.userLoggedIn();
  }

  bool clearSharedData() {
    return authRepo.clearSharedData();
  }*/

