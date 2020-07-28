import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:toast/toast.dart';
import 'package:webap/about.dart';
import 'package:webap/addata.dart';
import 'package:webap/getdata.dart';
import 'addata.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      initialRoute: '/',
       routes: {

        '/about':(context)=>about(),
         '/addata':(context)=>addata(),
         '/getdata':(context)=>getdata()

       },

      title: 'Flutter Demo',
      theme: ThemeData(

        primaryColor: Color(0xFFf54291),
        fontFamily: 'Lobster'

      ),

      home: Builder(

        builder:(cntxt)=> Scaffold(

          appBar: AppBar(title: Text('Note Add',style: TextStyle(color: Colors.white,fontFamily: 'Lobster'),),elevation: 1,),

          body: Center(
            child: AspectRatio(

              aspectRatio: 9/10,

              child: Container(

                padding: EdgeInsets.only(top:30),

                child: GridView.count(
                    crossAxisCount: 2,
                    padding: EdgeInsets.all(10),
                    childAspectRatio: (200/200),
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 40,
                    children: <Widget>[

                      GestureDetector(

                        onTap: ()
                        {
                            Navigator.pushNamed(cntxt, '/addata');
                        },

                        child: GridTile(


                          child: Image.asset('assets/add.png'),

                        ),
                      ),
                      GestureDetector(

                        onTap: ()
                        {
                            Navigator.pushNamed(cntxt, '/getdata');
                        },

                        child: GridTile(


                          child: Image.asset('assets/edit.png'),

                        ),
                      ),
                      GestureDetector(

                        onTap: (){

                        },

                        child: GridTile(


                          child: Image.asset('assets/del.png'),

                        ),
                      ),
                      GestureDetector(

                        onTap: (){

                          Navigator.pushNamed(cntxt, '/about');

                        },

                        child: GridTile(


                          child: Image.asset('assets/about.png')

                        ),
                      )
                    ],

                ),
              ),
            ),
          ),

          drawer: Drawer(

            child: ListView(


              children: <Widget>[

              DrawerHeader(

                padding: EdgeInsets.only(top: 40),

                child: Center(child: Column(

             children: <Widget>[

                  Container(

                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      image: DecorationImage(

                        image: NetworkImage('https://cdn.pixabay.com/photo/2016/09/16/19/04/pen-1674847_960_720.png')

                      )

                    ),

                  ),

                  SizedBox(

                    height: 10,

                  ),

                  Text('Add Notes', style: TextStyle(color: Colors.white),)

             ],

            )),
                decoration: BoxDecoration(

                  color:Color(0xFFf54291)

                ),

              ),

                ListTile(

                  title: Text('About',style: TextStyle(fontFamily:'CutiveMono' ),),
                  onTap: ()
                  {

                    Navigator.popAndPushNamed(cntxt, '/about');

                  },

                )

              ],

            ),

          ),

        ),
      ),

    );
  }
}