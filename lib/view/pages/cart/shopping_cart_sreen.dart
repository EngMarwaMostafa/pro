
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../base/no_data_page.dart';
import '../../../controllers/cart_controller.dart';
import '../../../controllers/products_controller.dart';
import '../../../utils/app_colors.dart';
import '../../widgets/cart_widget.dart';
import '../checkout/order_list_screen.dart';
import '../home/home_page_body.dart';

class ShoppingCartScreen extends StatelessWidget {
  ShoppingCartScreen({Key? key}) : super(key: key);

  //final controller = Get.put(ProductsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.detailColor,
        leading: IconButton(
          color: AppColors.mainColor,
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: Text(
          'Shopping Cart',
          style: TextStyle(
            fontSize: 17.sp,
            color: AppColors.font1Color,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: AppColors.detailColor,
      body:
   //   GetBuilder<CartController> (builder:(_cartController){
   //     return _cartController.cartItems.length>0
     //  ?
        SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 27.h,
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 16.w, right: 19.w),
                      child: GetBuilder<CartController>(
                        builder: (_cartController) {
                          //var _cartList = _cartController.cartItems;
                          return ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                            //  itemCount: _cartList.length,
                              itemBuilder: (_, index) {
                             /*   return CartItems(
                                  // index: index,
                              //    image: _cartController.cartItems[index]
                                      .coverImg.toString(),
                                  name: _cartController.cartItems[index].name
                                      .toString(),
                                  quantity: _cartController.cartItems[index]
                                      .quantity.toString(),
                                );*/
                              });
                        } )),
                  SizedBox(
                    height: 27.h,
                  ),
                  Container(
                    width: 340.w,
                    height: 90.h,
                    color: AppColors.brandColor,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 16.w, right: 28.w, top: 14.h, bottom: 22.h),
                      child: Row(
                        children: [
                          Text(
                            'Add items worthSR 60.00 \n more for FREE delivery',
                            style: TextStyle(
                              fontSize: 17.sp,
                              color: Colors.white,
                            ),
                          ),
                          Image(
                            image: AssetImage('assets/icons/car.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // SizedBox(height: 54.h,),
                  Padding(
                    padding: EdgeInsets.only(top: 44.h, left: 298.w),
                    child: Container(
                        width: 62.w,
                        height: 62.h,
                        decoration: BoxDecoration(
                          color: AppColors.mainColor,
                          shape: BoxShape.circle,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Get.to(HomePageBody());
                          },
                          child: ImageIcon(
                            AssetImage('assets/icons/home.png'),
                            color: Colors.white,
                          ),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.w, top: 20.h),
                    child: Container(
                      width: 343.w,
                      height: 46.h,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.r),
                            gradient: LinearGradient(colors: [
                              AppColors.but1Color,
                              AppColors.but2Color
                            ])),
                        child: ElevatedButton(
                          onPressed: () {
                            Get.to(OrderListScreen());
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.transparent),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 15.w,
                              ),
                              Text(
                                'PLACE THIS ORDER SR ',
                                // controller.total,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.sp,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 95.w,
                              ),
                              Container(
                                width: 29.w,
                                height: 29.h,
                                child: CircleAvatar(
                                  backgroundColor: Colors.black,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 3.w),
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      color: AppColors.but2Color,
                                      size: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
            //:
     //   NoDataPage(text: 'Your Cart IS Empty');
     // }
   //   ),
  );
  }
}

