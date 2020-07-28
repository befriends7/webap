import 'package:flutter/material.dart';
import 'main.dart';
import 'tabinit.dart';
import 'getdatafin.dart';

String vals;

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


      ),

      home: Builder(
        builder:(cntxt)=> Scaffold(

          appBar: AppBar(elevation:2,title: Text('Records',style: TextStyle(color: Colors.white,fontFamily: 'Lobster'),),

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
          height: double.infinity,

          padding: EdgeInsets.only(top: 40,left: 10,right: 10),

          child: Column(

            children: <Widget>[

              TextField(
                maxLength: 20,
                onChanged: (text)=>vals=text,
                decoration: InputDecoration(

                  hintText: 'Enter title to search',
                  border: OutlineInputBorder(

                    borderRadius: BorderRadius.circular(2),
                    borderSide: BorderSide(color: Colors.grey,style: BorderStyle.solid)

                  )

                ),

              ),

              SizedBox(

                height: 20,

              ),


              SizedBox(

                height: 10,

              ),

              Container(

                width: double.infinity,

                child: RaisedButton(

                  color: Color(0xFF05dfd7),

                  onPressed: (){

                   Navigator.push(cntxt, MaterialPageRoute(builder: (cntxt)=>getdatafin(text:vals)));

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


