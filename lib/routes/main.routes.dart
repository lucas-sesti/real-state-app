import 'package:flutter/material.dart';
import 'package:real_estate_app/screens/home.screen.dart';

class Routes {
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      '/': (BuildContext context) => Home(),
    };
  }
}
