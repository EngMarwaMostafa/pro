import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/app_colors.dart';
import '../pages/details/order_details_screen.dart';

class MyOrderWidget extends StatelessWidget {
  final String? order;
  final String? total;
  final String? items;
  final String? status;
  final String? date;
  const MyOrderWidget({
    Key? key,
    this.order,
    this.total,
    this.items,
    this.status,
    this.date
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
              //  width: 347.w,
               // height: 236.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding:EdgeInsets.only(left: 16.w,top: 15.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Order',
                                style: TextStyle(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.normal,
                                  color: AppColors.orderColor,
                                ),
                              ),
                              SizedBox(
                                height: 13.h,
                              ),
                              Text(
                                'Total Amount',
                                style: TextStyle(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.normal,
                                  color: AppColors.orderColor,
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                'items',
                                style: TextStyle(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.normal,
                                  color: AppColors.orderColor,
                                ),
                              ),
                              SizedBox(
                                height: 13.h,
                              ),
                              Text(
                                'Order Status',
                                style: TextStyle(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.normal,
                                  color: AppColors.orderColor,
                                ),
                              ),
                              SizedBox(
                                height: 13.h,
                              ),
                              Text(
                                'Date',
                                style: TextStyle(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.normal,
                                  color: AppColors.orderColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 100.w,),
                        Padding(
                          padding: EdgeInsets.only(top: 15.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                order!,
                                style: TextStyle(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.fontColor,
                                ),
                              ),
                              SizedBox(
                                height: 13.h,
                              ),
                              Text(
                                total!,
                                style: TextStyle(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.fontColor,
                                ),
                              ),
                              SizedBox(
                                height: 13.h,
                              ),
                              Text(
                               items!,
                                style: TextStyle(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.fontColor,
                                ),
                              ),
                              SizedBox(
                                height: 13.h,
                              ),
                              Text(
                                status!,
                                style: TextStyle(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.fontColor,
                                ),
                              ),
                              SizedBox(
                                height: 13.h,
                              ),
                              Text(
                                date!,
                                style: TextStyle(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.fontColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 17.sp,),
                    GestureDetector(
                      onTap: () {
                        Get.to(OrderDetailsScreen());
                      },
                      child: Container(
                        width: 116.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(3.r),
                        ),
                        child: Text(
                          'Order Details', style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.white,
                        ),
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                  ],
                ),
     );
  }
}
