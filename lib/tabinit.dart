
import 'dart:io';
import 'package:hive/hive.dart';


import 'package:hive/hive.dart';


class tabinit {

  Future addata(String title,String desc) async
  {
    var box = await Hive.openBox('data');
    box.put(title, desc);
    print(box.get('james'));

  }

  Future<String> getdata(String title) async
  {
    var box = await Hive.openBox('data');
    return box.get(title);


  }

}


