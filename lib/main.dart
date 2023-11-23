import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mywebtoon/screen/home_screen.dart';
import 'package:mywebtoon/services/api_service.dart';

void main() {
  ApiService();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
