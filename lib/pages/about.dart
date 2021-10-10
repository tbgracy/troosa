import 'package:flutter/material.dart';

class About extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back), 
          // icon: Icon(Icons.close), 
          onPressed: () => Navigator.pop(context),),
        title: Text('About'),
      ),
      body: Center(
        child: Text(
          'This is the about page',
          style: TextStyle(
            color: Colors.blueGrey,
            fontFamily: 'Ubuntu',
          ),),
      ),
    );
  }
}