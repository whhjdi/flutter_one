import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/services.dart';
import './Pages/home_page.dart';

void main() {
  runApp(MyApp());
  if (Platform.isAndroid) {
    SystemUiOverlayStyle systemUiOverlayStyle =
        SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter-one',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
