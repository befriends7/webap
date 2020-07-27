import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primaryColor: Color(0xFFf54291)

      ),

      home: Scaffold(

        appBar: AppBar(title: Text('BookRead',style: TextStyle(color: Colors.white),),),

        body: Center(

          child: Text('This is the Starting Page'),

        ),

      ),

    );
  }
}