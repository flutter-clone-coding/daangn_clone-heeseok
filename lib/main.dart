import 'package:flutter/material.dart';
import 'package:daangn_clone/register/locationStart.dart';
import 'package:daangn_clone/register/locationRequest.dart';
import 'package:daangn_clone/register/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daangn Clone using Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/locationStart',
      routes: {
        '/locationStart': (context) => const LocationStartPage(),
        '/locationRequest': (context) => LocationRequestPage(),
        '/login': (context) => LoginPage(),
      },
    );
  }
}
