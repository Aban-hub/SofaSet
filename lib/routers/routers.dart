import 'package:flutter/material.dart';
import 'package:kundenberatung/ui/feature.dart';
import 'package:kundenberatung/ui/login.dart';
import 'package:kundenberatung/ui/splash.dart';
import 'package:kundenberatung/vivek/product.dart';

class AppRouters {

  static const String SPLASH_SCREEN = "splash";
  static const String LOGIN_SCREEN = "login";
  static const String FEATURE_SCREEN = "feature";
  static const String PRODUCT_SCREEN = "product";
  static const String USER_DETAIL_SCREEN = "user_detail";

  static Route<dynamic> generateRoute(RouteSettings settings) {

    final args = settings.arguments;

    switch(settings.name) {
      case SPLASH_SCREEN:
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case LOGIN_SCREEN:
        return MaterialPageRoute(builder: (context) => LoginScreen());
      case FEATURE_SCREEN:
        return MaterialPageRoute(builder: (context) => FeatureScreen());
      case PRODUCT_SCREEN:
        return MaterialPageRoute(builder: (context) => ProductScreen());
      case USER_DETAIL_SCREEN:
        return MaterialPageRoute(builder: (context) => ProductScreen());
      default:
        _errorRoute();
    }

  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Error"),
          centerTitle: true,
        ),
        body: Center(
          child: Text("page Not Found"),
        ),
      );
    });
  }

}