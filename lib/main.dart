import 'package:flutter/material.dart';
import 'package:ui_e_commerce/pages/CartPage.dart';
import 'package:ui_e_commerce/pages/ChatPage.dart';
import 'package:ui_e_commerce/pages/HomePage.dart';
import 'package:ui_e_commerce/pages/ItemPage.dart';
import 'package:ui_e_commerce/pages/LoginPage.dart';
import 'package:ui_e_commerce/pages/RegisterPage.dart';
import 'package:ui_e_commerce/pages/messageListPage.dart';

void main () {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      routes: {
        "/": (context) => Homepage(),
        "cartPage": (context) => Cartpage(),
        "itemPage": (context) => Itempage(),
        'messageListPage': (context) => MessageListPage(),
        'chatPage': (context) => ChatPage(),
        'LoginPage': (context) => Loginpage(),
        'RegisterPage': (context) => RegisterPage(),
      },
    );
  }
}