
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get_storage/get_storage.dart';
import 'package:nebtton/controllers/product_details_controller.dart';
import 'package:nebtton/controllers/wishlist_controller.dart';
import '../models/categories_model.dart';
import '../models/products_model.dart';
import '../models/search_model.dart';
import '../services/products_services.dart';
import '../utils/app_colors.dart';
import 'cart_controller.dart';

class ProductsController extends GetxController {
  final detailsController = Get.put(ProductDetailsController());
  final wishlistController = Get.put(WishlistController());


  var favoritesList = <ProductsModel>[].obs;
  var stoarge = GetStorage();
  final _services = ProductsServices();
  Future<ProductsModel>? futureData;
  Future<SearchModel>? search;
  Future<CategoriesModel>? category;

  final text = ''.obs;


  @override
  Future<void> onInit() async {
    super.onInit();
    futureData = _services.getProducts();
    category = _services.getCategory();
  }

  late CartController _cart;
  int _quantity = 0;

  int get quantity => _quantity;
  int _inCartItems = 0;

  int get inCartItems => _inCartItems + _quantity;

}