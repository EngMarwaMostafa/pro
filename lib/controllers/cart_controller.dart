import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';




class CartController extends GetxController implements GetxService {
  /*var cartDataList = <CartModel>[].obs;
  var storge = SharedPrefs.instance;
  String cartListString = '';
  @override
  void onInit() async {
    cartListString = storge.getString('cartDataList') ?? '';
    super.onInit();
  }
  
  void addProductToCart(
  {required int quantity,
  required int id,
  required Names name,
  required String coverImg}) async {
    await CartServices()
        .addToCart(quantity: quantity, productId: id)
        .then((value) {
      cartDataList.add(
        CartModel(
          id: value.id,
          quantity: value.quantity,
          price: value.price,
          name: value.name,
          productImage: value.productImage,
        ),
      );
      update();

      void counterAddProductToCart(CartModel cartModel) {
        int quantityUpdate = (cartModel.quantity! + '1') as int;
        CartModel cartUpdate = CartModel(
          id: cartModel.id,
          quantity: cartModel.quantity,
          price: cartModel.price,
          productImage: cartModel.productImage,
          name: cartModel.name,
        );
        cartDataList.indexOf(cartModel);
        cartDataList[cartDataList
            .indexWhere((element) => element.id == cartModel.id)] = cartUpdate;
      };
    });
  }}*/


  addToCart({int? productId, int? quantity}) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final dio = Dio();
    try {
      final response = await dio.post(
          "http://beautiheath.com/sub/eshop/api/buyers/addtocart",
          data: {"quantity": quantity, "productId": productId},
          options: Options(headers: {
            "Authorization": "Bearer ${sharedPreferences.getString("token")}"
          }));
      print(response.statusCode);
      if (response.statusCode == 200) {
        print(response.data);
        print(response.statusCode);
      }
    } catch (e) {}
  }

  removeFromCart({int? productId, int? quantity}) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final dio = Dio();
    try {
      final response = await dio.post(
          "http://beautiheath.com/sub/eshop/api/buyers/addtocart",
          data: {"quantity": quantity, "productId": productId},
          options: Options(headers: {
            "Authorization": "Bearer ${sharedPreferences.getString("token")}"
          }));
      print(response.statusCode);
      if (response.statusCode == 200) {
        print('marwa');
      }
    } catch (e) {}
  }
}