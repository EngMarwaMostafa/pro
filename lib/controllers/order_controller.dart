import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:nebtton/models/Order_model.dart';
import 'package:nebtton/services/order_services.dart';

class OrderController extends GetxController{
  final _services = OrderServices();
  Future<OrderModel>? future;

  @override
  Future<void> onInit()async{
    super.onInit();
    future=_services.getOrder();
  }
}