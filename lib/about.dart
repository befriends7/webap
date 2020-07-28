

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webap/main.dart';

class about extends StatelessWidget
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

        builder:(cntxt)=>

        Scaffold(

          appBar: AppBar(title: Text('About',style: TextStyle(color: Colors.white,fontFamily: 'Lobster'),
          ),
          elevation: 1,
          actions: <Widget>[


            IconButton(

              icon:Icon(Icons.home),
              onPressed: (){

                Navigator.pushNamed(cntxt, '/home');

              },

            )

          ],
          ),

          body: SingleChildScrollView(
            child: Column(


              children: <Widget>[

                Container(

                  width: double.infinity,
                  height: 350,
                  color: Color(0xFFF7F7F7),
                  padding: EdgeInsets.only(top:120),

                  child: Center(

                    child: Column(

                      children: <Widget>[

                         Text('NOTE ADD',style: TextStyle(fontSize: 50,color: Color(0xFF05dfd7)),),
                         SizedBox(height: 10,),
                         Text('Add notes, reminders and important meeting schedules',style: TextStyle(color:Color(0xFF05dfd7),fontSize: 20 ),),
                        Text('Your Go to Assistant',style: TextStyle(color:Color(0xFF05dfd7),fontSize: 20 ),)


                      ],

                    ),

                  ),


                ),

                Container(


                  padding: EdgeInsets.only(top: 60),

                  child: Column(

                    children: <Widget>[

                      Text('WHO WE ARE',style: TextStyle(color: Colors.black,fontFamily:'CutiveMono',fontSize: 22 ),),
                      SizedBox(height: 28,),
                      Container(

                        padding: EdgeInsets.only(left: 10,right: 10),

                        child: Text('We provide the number one solution to all matters of the day to day task recording. Our note app is a way to keep check of'
                             ' your reminders throughout the day',style: TextStyle(color: Colors.black,fontFamily: 'CutiveMono',fontSize: 19),),
                      )


                    ],

                  ),


                )

              ],

            ),
          )

        ),
      ),

    );
  }

}