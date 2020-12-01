import 'package:demand_supply/firebase.dart';
import 'package:demand_supply/homepage.dart';
import 'package:demand_supply/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    initializeFirebaseApp();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: LoginScreen(),
      home: HomePage(),
    );
  }
}
