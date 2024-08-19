import 'package:flutter/material.dart';
import 'package:prjct2/screens/home.dart';
import 'package:prjct2/screens/login.dart';
import 'package:prjct2/screens/signUp.dart';
import 'package:prjct2/screens/splashPage.dart';
import 'package:prjct2/screens/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Splashpage() ,debugShowCheckedModeBanner: false,
    );
  }
}
