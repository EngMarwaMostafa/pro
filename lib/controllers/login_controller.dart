import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nebtton/view/widgets/custom_snacckbar.dart';
import 'package:nebtton/view/widgets/loader.dart';


import '../base/show_custom_bar.dart';
import '../routes/router_helper.dart';

class LoginController extends GetxController {
  late TextEditingController emailController,passwordController;


  @override
  void onInit() {
    super.onInit();
    //checkUser();
    emailController=TextEditingController();
    passwordController=TextEditingController();
  }

 /* checkUser()async{
  var user=SharedPrefs().getUser();
  if(user!= null){
    Get.offAllNamed(RouteHelper.getInitial());
  }
  }*/


  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }

  checkLogin() {
    if (emailController.text.isEmpty ||
        GetUtils.isEmail(emailController.text) == false) {
      customSnackbar('Error', 'Avalid email is required', 'error');
    } else if (passwordController.text.isEmpty) {
      customSnackbar('Error', 'password is required', 'error');
    } else {
      Get.showOverlay(asyncFunction: () => login(), loadingWidget: Loader());
    }
  }

  login()async{
  //  final sharedPreferences = await SharedPreferences.getInstance();
    var response=await http.post(Uri.parse('https://elnamat.com/poems/eshop/api/buyers/login'),
    body: {
      'email':emailController.text,
      'password':passwordController.text,
    },);
    var res=await json.decode(response.body);
    print(response);
    if (response.statusCode == 200) {
      showCustomSnackbar('Sucessful',title: 'Perfect');
      // UserModel userModel = UserModel.fromJson(response.body);
   //  sharedPreferences.setString("token", userModel.data!.token!);
      Get.offAllNamed(RouteHelper.getInitial());
    }else {
      showCustomSnackbar('Error',title: 'Error');
    }
  }
  }
