import 'package:flutter/material.dart';
import 'package:troosa/pages/home.dart';
import 'package:troosa/pages/about.dart';
import 'package:troosa/pages/help.dart';
import 'package:troosa/pages/settings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'troosa',
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      routes: <String, WidgetBuilder>{
        '/about': (BuildContext context) => About(),
        // '/buddylist': (BuildContext context) => BuddyList(),
        '/help': (BuildContext context) => Help(),
        '/settings': (BuildContext context) => Settings(),
      },
    );
  }
}
