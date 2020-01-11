
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget{
  static String title = 'Home page';

  static var tag;
  @override
  Widget build(BuildContext context) {
    final herologin = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/fb.png'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Welcome Hero',
        style: TextStyle(
          fontSize: 28.0,
          color: Colors.white,

        ),
        ),
    );

    final welcometxt = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Welcome to the world of flutter',
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.white,
        ),
        )
    );

    final backbutton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child:Material(
          borderRadius: BorderRadius.circular(10.0),
          shadowColor: Colors.lightBlueAccent.shade100,
          elevation: 0.0,    
          
          child: MaterialButton(
            color: Colors.white,
            onPressed: (){
              Navigator.pop(context);
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0)
            ),
            height: 45.0,
            minWidth: 0.0,
            child: Text('Back',
              style: TextStyle(color:Colors.black),
            ),
          )
      )
    );
     

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blue,
            Colors.blue,
            Colors.blue,
            Colors.cyan,
          ],
        )
      ),

      child: Column(
        children: <Widget>[
          herologin,welcome,welcometxt,backbutton
        ],
      ),
    );

    
    // TODO: implement build
    return Scaffold(
      body: body,
    );
  }
}