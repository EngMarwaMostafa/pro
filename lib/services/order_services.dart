import 'package:dio/dio.dart';
import 'package:nebtton/models/Order_model.dart';

class OrderServices{

  final Dio _dio=Dio();

  final String baseurl = 'https://elnamat.com/poems/eshop/api/buyers';

  Future<OrderModel> getOrder() async{
    Response response=await _dio.get('$baseurl/get-buyer-order');
    if(response.statusCode==200){
      print(response.data);
      return OrderModel.fromJson(response.data);
    }
    throw 'exception';
  }
}