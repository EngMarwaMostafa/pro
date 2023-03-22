import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nebtton/controllers/order_controller.dart';
import 'package:nebtton/models/Order_model.dart';

import '../../../utils/app_colors.dart';
import '../../widgets/myOrder.dart';

/*
class MyOrderScreen extends StatelessWidget {
 MyOrderScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OrderController());
    return Scaffold(
      backgroundColor: AppColors.detailColor,
      appBar: AppBar(
        backgroundColor: AppColors.detailColor,
        leading: IconButton(
          color: AppColors.mainColor,
          onPressed: () {
            Get.back();
          }, icon: Icon(Icons.arrow_back_ios,),
        ),
        title: Text(
          'My Order',
          style: TextStyle(
            fontSize: 22.sp,
            color: AppColors.brandColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
         child: Column(
           children: [
             FutureBuilder<OrderModel>(
               future:controller.future ,
                 builder: (context, snapshot) {
                if (snapshot.hasData) {
                 return
                   Padding(
                   padding: EdgeInsets.only(left: 14.w, top: 10.h),
                   child: SizedBox(
                       width: 347.w,
                      height: 236.h,
                     child: ListView.builder(
                          scrollDirection: Axis.vertical,
                       physics: const ClampingScrollPhysics(),
                       shrinkWrap: true,
                           itemCount: snapshot.data!.data!.length,
                              itemBuilder: (ctx, index) => MyOrderWidget(
                              order: snapshot.data!.data![index].orderNumber,
                              status: snapshot.data!.data![index].status,
                                date: snapshot.data!.data![index].createdAt,
                              ),
                             ),
                   ),
                      );
                } else {
                return Center(
              child: CircularProgressIndicator(),
                 );
                }
                 }),
          //  SizedBox(height: 58.h,),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 116.w,
                height: 30.h,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(3.r),
                    gradient: LinearGradient(
                        colors: [AppColors.but1Color, AppColors.but2Color])),
                child: Text(
                  'LOAD MORE', style: TextStyle(
                  fontSize: 12.sp,
                  color: AppColors.cartColor,
                ),
                ),
                alignment: Alignment.center,
              ),
            ),
           ],
         ),
      ),
     );
  }
}
*/