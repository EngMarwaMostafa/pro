import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nebtton/controllers/login_controller.dart';
import '../../../base/show_custom_bar.dart';
import '../../../controllers/signup_controller.dart';
import '../../../routes/router_helper.dart';
import '../../../utils/app_colors.dart';
import '../../widgets/app_text_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: GetBuilder<LoginController>(builder: (loginController) {
        return SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 68.h),
                child: Center(
                  child: Image(
                    image: AssetImage('assets/img/logo.png'),
                    fit: BoxFit.fill,
                    width: 200.w,
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Container(
                width: 350.w,
                height: 385.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.r),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 48.0.w, top: 22.h),
                              child: Text(
                                'SIGN IN',
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.fontColor,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 62.w),
                              child: Container(
                                width: 39.w,
                                height: 5.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.r),
                                  color: AppColors.fontColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 110.w,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(RouteHelper.getSignupScreen());
                          },
                          child: Text(
                            'SIGN UP',
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                              color: AppColors.blackColor,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Divider(thickness: 2, color: AppColors.formColor),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 76.0.w),
                      child: Text(
                        'Welcome, Please login to your account',
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: AppColors.blackColor,
                        ),
                      ),
                    ),
                    SizedBox(height: 29.h),
                    AppTextField(
                     textEditingController: loginController.emailController,
                        hintText: 'Email'),
                    SizedBox(
                      height: 15.h,
                    ),
                    AppTextField(
                        textEditingController: loginController.passwordController,
                        hintText: 'Password'),
                    SizedBox(
                      height: 18.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 220.w, bottom: 5.h),
                      child: Text(
                        'Forget Password?',
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: AppColors.font1Color,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Center(
                      child: Container(
                        width: 320.w,
                        height: 48.h,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.r),
                            gradient: LinearGradient(
                              colors: [
                                AppColors.but1Color,
                                AppColors.but2Color
                              ],
                            ),
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              loginController.checkLogin();
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colors.transparent),
                            child: Text(
                              'SIGN IN ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 38.h,
              ),
              Center(
                child: Text(
                  'Dont have account? Swipe right to',
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(RouteHelper.getSignupScreen());
                },
                child: Text(
                  'Create New Account',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15.sp,
                    color: AppColors.blackColor,
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
