
import 'dart:convert';
import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:http/http.dart' as http;
import '../base/show_custom_bar.dart';
import '../routes/router_helper.dart';
import '../view/widgets/custom_snacckbar.dart';
import '../view/widgets/loader.dart';


class ContactController extends GetxController implements GetxService {
  late TextEditingController
  fullNameController,
      emailController,
      phoneController,
      fullAddressController,
      addressIdController,
      addressNameController,
      cityController,
     districtController,
      stateController;

  @override
  void onInit() {
  super.onInit();
  fullNameController = TextEditingController();
  emailController = TextEditingController();
  phoneController = TextEditingController();
  fullAddressController = TextEditingController();
  addressIdController = TextEditingController();
  addressNameController = TextEditingController();
  cityController = TextEditingController();
  stateController = TextEditingController();
  districtController = TextEditingController();
  }

  @override
  void onClose() {
  super.onClose();
    fullNameController.dispose();
  emailController.dispose();
  phoneController.dispose();
  fullAddressController.dispose();
 addressIdController.dispose();
 addressNameController.dispose();
  cityController.dispose();
  stateController.dispose();
  districtController.dispose();
  }

 contact() {
  if (fullNameController.text.isEmpty) {
  customSnackbar('Error', 'Name is required', 'error');
  return;
  }
  else if (emailController.text.isEmpty ||
  GetUtils.isEmail(emailController.text) == false) {
  customSnackbar('Error', 'Avalid Email is required', 'error');
  return;
  }
  else if (phoneController.text.isEmpty) {
    customSnackbar('Error', 'phone is required', 'error');
    return;
  }
  else if (fullAddressController.text.isEmpty) {
    customSnackbar('Error', 'address is required', 'error');
    return;
  }
  else if (cityController.text.isEmpty) {
    customSnackbar('Error', 'city is required', 'error');
    return;
  }
  else if (stateController.text.isEmpty) {
    customSnackbar('Error', 'state is required', 'error');
    return;
  } else {
  Get.showOverlay(asyncFunction: () => contctup(), loadingWidget: Loader());
  }
  }

  contctup() async{
  var response = await http.post(Uri.parse('https://elnamat.com/poems/eshop/api/buyers/add-adress'),
  body:{
    'addressId': addressIdController.text,
    "address_name": addressNameController.text,
    "full_address": fullAddressController.text,
    'full_name':fullNameController.text,
    'email':emailController.text,
    'phone':phoneController.text,
    'city':cityController.text,
    'state':stateController.text,

  });
  var res=await json.decode(response.body);
  print(response);
  if (response.statusCode == 200) {
    print('mmmmmmmmmmmmm');
  showCustomSnackbar('saving address sucess',title: 'Perfect');
  Get.offAllNamed(RouteHelper.getAccountDetailsScreen());
  }else {
  showCustomSnackbar('Error',title: 'Error');
  }
  }

  }

/*
  saveAddress(
      String fullName,
      String email,
      String phone,
      String fullAddress,
      String addressId,
      String addressName,
      String city,
      String state) async {
    _isLoading = true;
    update();
    final response = await dio.post(
        "http://beautiheath.com/sub/eshop/api/buyers/add-adress",
        data: {"addressId": addressId, "address_name": addressName, "full_address": fullAddress,
          'full_name':fullName,'email':email,'phone':phone,'city':city,'state':state });
    print(response.data);
    if (response.statusCode == 200) {
      Get.offAll(() => const MainHomeScreen());
      print(response.data);
    } else {
      print(response.data);
    }
    _isLoading = true;
    update();
  }

 void saveUserAddress(String fullName, String email, String phone,String fullAddress,String addressId,String addressName,String city,String state) {
    contactRepo.saveUserAddress(fullName, email, phone, fullAddress, addressId, addressName, city, state);
  }

}

*/