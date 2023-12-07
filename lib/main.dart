import 'package:flutter/material.dart';
import 'package:shoesshop/pages/home_page.dart';
import 'package:shoesshop/pages/intro_page.dart';
import 'package:shoesshop/pages/shop_page.dart';


void main(){
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  IntroPage(),
    );
  }
}
