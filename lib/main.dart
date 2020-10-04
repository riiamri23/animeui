import 'package:flutter/material.dart';
import 'package:uianime/configs/constants.dart';
import 'package:uianime/screens/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anime Layout',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // scaffoldBackgroundColor: kBackgroundColor,
      ),
      home: HomeScreen(),
    );
  }
}
