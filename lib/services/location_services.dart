import 'package:dio/dio.dart';


import '../models/contact_model.dart';

class LocationServices{

  final Dio _dio=Dio();

  final String baseurl = 'https://elnamat.com/poems/eshop/api/buyers';

  fetchLocation() async{
    Response response=await _dio.get('$baseurl/add-adress');
    if(response.statusCode==200){
      print(response.data);
      return ContactModel.fromJson(response.data);
    }
    throw 'exception';
  }
}