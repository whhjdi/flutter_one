import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/services.dart';
import './Pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      SystemUiOverlayStyle systemUiOverlayStyle =
          SystemUiOverlayStyle(statusBarColor: Colors.transparent);
      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    }

    return MaterialApp(
      title: 'flutter-one',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
