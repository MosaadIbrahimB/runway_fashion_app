import 'package:flutter/material.dart';
import 'package:runway_fashion_app/feature/splash/presentation/screen/splash_screen.dart';

import '../../../feature/details/presentation/screen/details_screen.dart';
import '../../../feature/home/presentation/screen/home_screen.dart';
import '../../../feature/product/presentation/screen/product_screen.dart';

class AppRoute {
  static const String splash = '/s';
  static const String home = '/';
  static const String product = '/product';
  static const String details = '/details';

  static Route onGenerateRoute(RouteSettings routSetting) {
    switch (routSetting.name) {
      case AppRoute.splash:
        return MaterialPageRoute(builder: (context) => SplashScreen(), settings: routSetting,);
      case AppRoute.home:
        return MaterialPageRoute(builder: (context) => HomeScreen(), settings: routSetting,);
      case AppRoute.product:
        return MaterialPageRoute(builder: (context) => ProductScreen(), settings: routSetting,);
      case AppRoute.details:
        return MaterialPageRoute(builder: (context) => DetailsScreen(), settings: routSetting,);
      // case "/checkout":
      //   return MaterialPageRoute(builder: (context) => CheckOutScreen());
      // case "/payment":
      //   return MaterialPageRoute(builder: (context) => PaymentScreen());
      // case AppRoute.confirm:
      //   return MaterialPageRoute(builder: (context) => ConfirmingOrderScreen());
      // case AppRoute.map:
      //   return MaterialPageRoute(builder: (context) => MapScreen());
      default:
        return MaterialPageRoute(builder: (context) => _defaultScreen());
    }
  }

  static _defaultScreen() {
    return Scaffold(body: Center(child: Text("Default screen")));
  }
}
