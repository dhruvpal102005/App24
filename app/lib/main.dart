import 'package:flutter/material.dart';
import 'login_page.dart';  // Importing the login page

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
      home: LoginPage(),  // Set the LoginPage as the starting screen
    );
  }
}
