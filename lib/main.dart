import 'package:flutter/material.dart';
import 'package:trippy/constants/app_texts.dart';
import 'package:trippy/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppTexts.appName,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const Homepage(),
    );
  }
}
