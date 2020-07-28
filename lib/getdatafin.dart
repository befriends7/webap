
import 'package:flutter/material.dart';
import 'main.dart';
import 'tabinit.dart';
import 'tabinit.dart';

String vals;

class getdatafin extends StatelessWidget
{

  String text;
  getdatafin({Key key,@required this.text}):super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(

      routes: {

        '/home':(context)=>MyApp()

      },

      theme: ThemeData(

        primaryColor: Color(0xFFf54291),


      ),

      home: Builder(
        builder:(cntxt)=> Scaffold(

          appBar: AppBar(elevation:2,title: Text('Your Note',style: TextStyle(color: Colors.white,fontFamily: 'Lobster'),),

            actions: <Widget>[

              IconButton(

                icon: Icon(Icons.home),

                onPressed: (){

                  Navigator.pushNamed(cntxt, '/home');

                },


              )

            ],

          ),


        body: Container(

          width: double.infinity,
          height: 200,

          padding: EdgeInsets.only(top: 40,left: 10,right: 10),

          child: FutureBuilder(

            future: tabinit().getdata(text),
            builder:(context,snapshot) {
              if (!snapshot.hasData) {
                return Center(child: CircularProgressIndicator());
              }

              else {
                return Container(

                    width: double.infinity,
                    height: 200,

                    decoration: BoxDecoration(

                        border: Border.all(color: Colors.grey)

                    ),


                    child: Center(child: Text(snapshot.data.toString())));
              }
            }
          ),


        ),

        ),
      ),

    );
  }

}


