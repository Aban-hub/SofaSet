import 'package:flutter/material.dart';
import 'package:kundenberatung/ui/dashboard_screen.dart';
import 'package:kundenberatung/ui/feature_screen.dart';
import 'package:kundenberatung/ui/login_screen.dart';
import 'package:kundenberatung/ui/size_screen.dart';
import 'package:kundenberatung/ui/splash_screen.dart';
import 'package:kundenberatung/ui/product_screen.dart';
import 'package:kundenberatung/ui/style_screen.dart';
import 'package:kundenberatung/ui/entry_detail_screen.dart';
import 'package:kundenberatung/ui/user_detail_screen.dart';

class AppRouters {

  static const String SPLASH_SCREEN = "splash_screen";
  static const String LOGIN_SCREEN = "login_screen";
  static const String DASHBOARD_SCREEN = "dashboard_screen";
  static const String FEATURE_SCREEN = "feature_screen";
  static const String PRODUCT_SCREEN = "product_screen";
  static const String ENTRY_DETAIL_SCREEN = "entry_detail";
  static const String USER_DETAIL_SCREEN = "user_detail";
  static const String STYLE_SCREEN = "style_screen";
  static const String SIZE_SCREEN = "size_screen";

  static Route<dynamic> generateRoute(RouteSettings settings) {

    final args = settings.arguments;

    switch(settings.name) {
      case SPLASH_SCREEN:
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case LOGIN_SCREEN:
        return MaterialPageRoute(builder: (context) => LoginScreen());
      case DASHBOARD_SCREEN:
        return MaterialPageRoute(builder: (context) => DashboardScreen());
      case FEATURE_SCREEN:
        return MaterialPageRoute(builder: (context) => FeatureScreen());
      case PRODUCT_SCREEN:
        return MaterialPageRoute(builder: (context) => ProductScreen());
      case ENTRY_DETAIL_SCREEN:
        return MaterialPageRoute(builder: (context) => EntryDetailScreen());
      case USER_DETAIL_SCREEN:
        return MaterialPageRoute(builder: (context) => UserDetailScreen());
      case STYLE_SCREEN:
        return MaterialPageRoute(builder: (context) => StyleScreen());
      case SIZE_SCREEN:
        return MaterialPageRoute(builder: (context) => SizeScreen());
      default:
        return _errorRoute();
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