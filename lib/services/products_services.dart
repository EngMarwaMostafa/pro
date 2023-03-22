import 'package:dio/dio.dart';
import '../models/categories_model.dart';
import '../models/products_model.dart';
import '../models/search_model.dart';

class ProductsServices{

  final Dio _dio=Dio();

  final String baseurl = 'https://elnamat.com/poems/eshop/api/buyers';

  Future<ProductsModel> getProducts() async{
    Response response=await _dio.get('$baseurl/product-details?productId=4&lang=ar');
    if(response.statusCode==200){
      print(response.data);
      return ProductsModel.fromJson(response.data);
    }
    throw 'exception';
  }

  Future<SearchModel> searchData(String label) async{
    Response response=await _dio.get('$baseurl/products/search?name=clothes');
    if(response.statusCode==200){
      // print(response.data);
      return SearchModel.fromJson(response.data);
    }
    throw 'exception';
  }

  Future<CategoriesModel> getCategory() async{
    Response response=await _dio.get('$baseurl/categotries?lang=ar');
    if(response.statusCode==200){
      // print(response.data);
      return CategoriesModel.fromJson(response.data);
    }
    throw 'exception';
  }
}