import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_login_sign/Login_And_Register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login_And_Register(),
    );
  }
}
