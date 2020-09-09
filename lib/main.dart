import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'file:///D:/AndroidProjects/appitron/_git/SofaSet/lib/ui/product_screen.dart';
import 'package:kundenberatung/routers/routers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kundenberatung',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: AppRouters.LOGIN_SCREEN,
      onGenerateRoute: AppRouters.generateRoute,
    );
  }
}
