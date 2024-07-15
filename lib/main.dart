import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider2/my_povider.dart';
import 'package:fl_chart/fl_chart.dart';

import 'dra.dart';

void main() {
  runApp (    ChangeNotifierProvider<MyProvider>(
      create: (_)=> MyProvider(),
      child:MyApp()));
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,

      home:  MyHomePage(),

        theme: ThemeData(

        primarySwatch: Colors.blue,),
    darkTheme: ThemeData(primaryColor:Colors.black ),
    themeMode:context.watch<MyProvider>().tm,


    );
  }
}
class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Demoooooooooooo'),),
        body: Container(
          child: Center(

          ),
        ),

      )
    ;
  }
}

