import 'package:flutter/material.dart';
import 'package:register/screen/loading.dart';
import 'package:register/screen/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LoadingPage(),
      ),
    );
  }
}
