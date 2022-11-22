import 'package:flutter/material.dart';
import 'FoodList.dart';

import './screen/main_screen.dart';

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
        "/": (contenxt) => const MainScreen(),
      },
    );
  }
}
