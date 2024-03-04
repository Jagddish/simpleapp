import 'package:flutter/material.dart';
import 'package:sankar/pages/formfield.dart';
import 'package:sankar/pages/home_page.dart';
import 'package:sankar/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LoginPage(),),
    );
  }
}

