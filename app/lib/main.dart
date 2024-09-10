// ignore: unused_import
import 'package:app/main_screen.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';  

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Queuing management and OPD app",
      home: LoginPage(),  
    );
  }
}
