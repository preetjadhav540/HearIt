import 'package:flutter/material.dart';
import 'package:hearit/app.dart';

class Lens extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text('Lens API', style: TextStyle(fontFamily: 'Roboto', fontSize: 30),),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, HomeRoute);
            },
            color: Colors.orangeAccent.shade400,
            textColor: Colors.white,
            splashColor: Colors.yellowAccent.shade400,
            child: Text('Go back'),
          ),
        ],
      ),
    );
  }
}