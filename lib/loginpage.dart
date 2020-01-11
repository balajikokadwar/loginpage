import 'package:flutter/material.dart';

import 'homepage.dart';

class Loginpage extends StatefulWidget{
  static String tag = 'Login Page';
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Loginpagestate();
  }
}

class Loginpagestate extends State<Loginpage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final logo = Hero( 
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('assets/fb.png'),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'example@gmail',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        )
      ),
    );

    final password = TextFormField(
      autofocus: false,
      initialValue: 'Some Password',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        )
      ),
    );

    final loginbutton = Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: Material(
        //  borderRadius: BorderRadius.circular(1000.0),
          shadowColor: Colors.lightBlueAccent.shade100,
          elevation: 0.0,
          child: MaterialButton(
            minWidth: 200.0,
            height: 42.0,
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Homepage()
                )
                 );
            },
            color: Colors.lightBlueAccent,
            child: Text('Login', style:TextStyle(color: Colors.white)),
            ),
          ),
        );

    final forgotlabel = FlatButton(
      child: Text(
        'Forgot Password?', 
        style: TextStyle(color: Colors.black54)),
        onPressed: (){},
    );


    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0,right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height:48.0),
            email,
            SizedBox(height:8.0),
            password,
            SizedBox(height:24.0),
            loginbutton,
            forgotlabel

          ],
        ),
      )
    );
  }
}











