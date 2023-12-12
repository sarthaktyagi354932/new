import 'package:flutter/material.dart';
import 'package:flutter_30_day/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
     
      themeMode: ThemeMode.system,
      theme: ThemeData(
        primarySwatch: Colors.grey),
      darkTheme: ThemeData(
        brightness: Brightness.dark),
        routes:{
          "/":(context) => HomePage()
        } ,
    );
  }
}
