import 'package:app/main_screen.dart';
import 'package:flutter/material.dart';

<<<<<<< HEAD
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
=======
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Queing management and OPD app",
      home: MainScreen(),
    );
>>>>>>> 927da47cd788233a2865887d30bb7c87c1134ec9
  }
}