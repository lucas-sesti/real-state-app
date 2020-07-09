import 'package:flutter/material.dart';
import 'package:real_estate_app/routes/main.routes.dart';

void main() {
  runApp(RealEstate());
}

class RealEstate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: Routes.getRoutes(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF131a2c),
        backgroundColor: Colors.white,
        dividerColor: Color(0xFFeef3f8),
        cardTheme: CardTheme(
          color: Color(0xFFf5f7fa),
        ),
        textTheme: TextTheme(
          headline4: TextStyle(
            fontFamily: 'Poppins',
            color: Color(0xFF12192b),
          ),
          headline6: TextStyle(
            fontFamily: 'Poppins',
            color: Color(0xFF12192b),
          ),
          subtitle1: TextStyle(
            fontFamily: 'Poppins',
            color: Color(0xFFa5aec7),
          ),
        ),
      ),
    );
  }
}
