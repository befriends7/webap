import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'main.dart';
import 'tabinit.dart';

String title,note;

class addata extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _addata();
  }

}

class _addata extends State<addata>
{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(

      routes: {

        '/home':(context)=> MyApp()

      },


      theme: ThemeData(

        primaryColor: Color(0xFFf54291)

      ),

      home: Builder(
        builder:(cntxt)=> Scaffold(

          appBar: AppBar(elevation:2,title: Text('Create Note',style: TextStyle(color: Colors.white,fontFamily: 'Lobster')),
            actions: <Widget>[

              IconButton(

                onPressed: ()
                {
                  Navigator.pushNamed(cntxt, '/home');
                },

                icon: Icon(Icons.home),

              )

            ],),

          body: Container(


            padding: EdgeInsets.only(top: 40,left: 10,right: 10),
            width: double.infinity,
            height: double.infinity,

            child: Column(
              children: <Widget>[

                TextField(

                  onChanged: (text)=>title=text,

                  maxLength: 20,
                  decoration: InputDecoration(

                      hintText: 'Enter Title',
                      border: OutlineInputBorder(

                        borderRadius: BorderRadius.circular(2.0),
                        borderSide: BorderSide(color: Colors.grey,style: BorderStyle.solid)

                      )

                  ),

                ),

                SizedBox(

                  height: 20,
                ),

                TextField(

                  onChanged: (text)=>note=text,

                  maxLength: 100,

                  decoration: InputDecoration(

                    hintText: 'Enter Note',
                    border: OutlineInputBorder(

                      borderRadius: BorderRadius.circular(2),
                      borderSide: BorderSide(color: Colors.grey,style: BorderStyle.solid)

                    )

                  ),

                ),

                SizedBox(

                  height: 20,

                ),

                Container(

                  width: double.infinity,


                  child: RaisedButton(

                    color: Color(0xFF05dfd7),

                    onPressed: ()
                    {
                      tabinit().addata(title,note);
                      Toast.show('Data Entered', cntxt);

                    },

                    child: Text('SUBMIT',style: TextStyle(color: Colors.white,fontSize: 17),),

                  ),
                )

              ],
            ),
          ),


        ),
      ),

    );
  }

}