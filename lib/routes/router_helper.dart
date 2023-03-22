import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:nebtton/view/pages/checkout/edit_address_screen.dart';
import '../view/pages/auth/login_screen.dart';
import '../view/pages/auth/signup_screen.dart';
import '../view/pages/details/product_detail_screen.dart';
import '../view/pages/home/main_home_screen.dart';
import '../view/pages/offers/offers_screen.dart';
import '../view/pages/splash/splash_screen.dart';


class RouteHelper{
  static const String splashPage = '/splash-page';
  static const String initial = "/";
  static const String login='/login';
  static const String register='/register';
  static const String details='/product_details';
  static const String offers='/offers';
  static const String cart='/cart';
  static const String account='/account';
  static const String editAddress='/edit_address';
  static const String myOrders='/orders';




  static String getSplashPage() => '$splashPage';
  static String getInitial() => "$initial";
  static String getLoginPage() => "$login";
  static String getSignupScreen() => "$register";
  static String getProductDetailsScreen() => "$details";
  static String getOffersScreen() => "$offers";
  static String getCartScreen() => "$cart";
  static String getAccountDetailsScreen() => "$account";
  static String getEditAddressScreen() => "$editAddress";
  static String getMyOrderScreen() => "$myOrders";



  static List<GetPage> routes =[
    GetPage(name: splashPage, page: () => SplashScreen()),
    GetPage(name: initial, page: (){
      return MainHomeScreen();
    },
        transition: Transition.fade),
    GetPage(
        name:login,
        page:(){
          return LoginScreen();
        },
        transition: Transition.fade),
    GetPage(
        name:register,
        page:(){
          return SignupScreen();
        }
    ),
    GetPage(
        name:details,
        page:(){
          return ProductDetailsScreen();
        }
    ),
  /*  GetPage(
        name:offers,
        page:(){
          return OffersScreen();
        }
    ),*/
  /*  GetPage(
        name:account,
        page:(){
          return AccountDetailScreen();
        }
    ),*/
    /* GetPage(
        name:cart,
        page:(){
          return ShoppingCartScreen();
        }
    ),*/

    GetPage(
        name:editAddress,
        page:(){
          return EditAddressScreen();
        }
    ),
   /* GetPage(
        name:myOrders,
        page:(){
          return MyOrderScreen();
        }
    ),*/
  ];
}