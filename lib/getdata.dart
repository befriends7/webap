
import 'package:flutter/material.dart';
import 'main.dart';

class getdata extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(

      routes: {

        '/home':(context)=>MyApp()

      },

      theme: ThemeData(

        primaryColor: Color(0xFFf54291),
        fontFamily: 'Lobster'

      ),

      home: Builder(
        builder:(cntxt)=> Scaffold(

          appBar: AppBar(elevation:2,title: Text('Records',style: TextStyle(color: Colors.white),),

            actions: <Widget>[

              IconButton(

                icon: Icon(Icons.home),

                onPressed: (){

                  Navigator.pushNamed(cntxt, '/home');

                },


              )

            ],

          ),



        ),
      ),

    );
  }

}