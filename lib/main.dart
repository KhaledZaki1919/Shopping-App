import 'package:flutter/material.dart';
import 'package:shoping/src/views/screens/home_screen/login_page.dart';
import 'package:shoping/src/views/screens/home_screen/signup_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'BalooBhaijaan2',
          scaffoldBackgroundColor: const Color(0xFF00FFB2),
          appBarTheme: const AppBarTheme(backgroundColor: Color(0xFF00FFB2))),
      debugShowCheckedModeBanner: false,
      home: SignupPage(),
    );
  }
}
