
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../controllers/offers_controller.dart';
import '../../../models/allOffers_model.dart';
import '../../widgets/offers_items.dart';




class OffersScreen extends StatelessWidget {
  const OffersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(OffersController());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'OFFERS',
          style: TextStyle(
            fontSize: 22.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          FutureBuilder<AllOffersModel>(
              future: controller.future,
              builder: (context, snapshot) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 260.h,
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data!.data!.length,
                      itemBuilder: (ctx, index) =>  GestureDetector(
                        onTap: () {
                        },
                        child: Offers(
                          image: snapshot.data!.data![index].coverImg,
                          quantity: snapshot.data!.data![index].quantity.toString(),
                          name: snapshot.data!.data![index].names!.en,
                          desc: snapshot.data!.data![index].description,
                        ),
                      ),
                    ),
                  ),

                );
              }
          ),
        ],
      ),
    );
  }
}
