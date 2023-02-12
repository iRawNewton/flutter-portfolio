import 'package:flutter/material.dart';

import 'screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'iRawNewton Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        primaryColorDark: const Color(0xffC2185B),
        primaryColorLight: const Color(0xffF8BBD0),
        primaryColor: const Color(0xffE91E63),
        dividerColor: const Color(0xffBDBDBD),
      ),
      home: const MyHomePage(),
    );
  }
}
