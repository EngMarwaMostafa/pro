
import 'package:dio/dio.dart';
import '../models/allOffers_model.dart';

class OffersServices{

  final Dio _dio=Dio();

  final String baseurl = 'https://elnamat.com/poems/eshop/api/buyers';

  Future<AllOffersModel> fetchShops() async{
    Response response=await _dio.get('$baseurl/shops');
    if(response.statusCode==200){
      print(response.data);
      return AllOffersModel.fromJson(response.data);
    }
    throw 'exception';
  }
}
