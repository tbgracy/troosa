import 'package:flutter/material.dart';
import 'package:troosa/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'troosa',
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
    );
  }
}
