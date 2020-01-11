import 'package:flutter/material.dart';
import 'loginpage.dart';
import 'homepage.dart';
main(){
  runApp(Myapp());
}


class Myapp extends StatelessWidget{

  final routes  = <String, WidgetBuilder>{
    Homepage.tag: (context)=> Homepage(),
    Loginpage.tag: (context) => Loginpage(),
  };
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Login Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      home: Loginpage(),
      routes: routes,
    );
  }
}