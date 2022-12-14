import 'package:flutter/material.dart';
import 'package:shopfood/screen/login_screen.dart';
import 'package:shopfood/screen/main_screen.dart';
import 'package:shopfood/screen/register.dart';

import './screen/special_offer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        LoginScreen.routeName: (contenxt) => LoginScreen(),
        RegisterScreen.routeName: (contenxt) => RegisterScreen(),
        MainScreen.routeName: (contenxt) => MainScreen(),
        SpecialOffer.routeName: (contenxt) => const SpecialOffer(),
      },
    );
  }
}
