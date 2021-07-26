import 'package:flutter/material.dart';

//The main function is the starting point of all the function
void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.blueGrey[900],
            appBar: AppBar(
              title: Text('I am Rich'),
              backgroundColor: Colors.blueGrey[900],
            ),
            body: Center(
              child: Image(
                image: AssetImage('images/heart.png'),
              ),
            ))),
  );
}
