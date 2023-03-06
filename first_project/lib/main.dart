import 'package:first_project/auth.dart';
import 'package:first_project/card.dart';
import 'package:first_project/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyThemeApp());
}

class MyThemeApp extends StatelessWidget {
  const MyThemeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      initialRoute: '/',
      routes: {
        '/': (context) => const AuthPage(),
        '/home': (context) => const HomePage(),
        '/card': (context) => const CardPage(),
      },
    );
  }
}
