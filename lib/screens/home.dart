import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/services.dart';
import 'package:hearit/app.dart';

class Home extends StatefulWidget {
  const Home({key}) : super(key: key);
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarDividerColor: Colors.grey,
    ));
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Hear It'),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 2,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          SizedBox(
            height: 32,
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Center(
                child: Text(
              'Welcome',
              style: TextStyle(fontFamily: 'Roboto', fontSize: 40),
            )),
          ),
          SizedBox(
            height: 32,
          ),
          Center(
            child: Lottie.asset(
              "assets/images/lurking-cat.json",
              height: 250,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: ButtonTheme(
                  height: 160,
                  minWidth: 120,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(32.0)),
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, ArRoute);
                    },
                    color: Colors.orangeAccent.shade400,
                    splashColor: Colors.yellowAccent.shade400,
                    textColor: Colors.white,
                    elevation: 4,
                    child: Lottie.asset(
                      'assets/images/3d-cube.json',
                      height: 80,
                      width: 80,
                      fit: BoxFit.contain,
                    ),
                    //Text('AR', style: TextStyle(fontFamily: 'Roboto', fontSize: 32, fontWeight: FontWeight.bold),)
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: ButtonTheme(
                    height: 160,
                    minWidth: 120,
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(32.0)),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, LensRoute);
                      },
                      color: Colors.orangeAccent.shade400,
                      splashColor: Colors.yellowAccent.shade400,
                      textColor: Colors.white,
                      child: Lottie.asset(
                        'assets/images/camera-scanning-effect.json',
                        height: 80,
                        width: 80,
                        fit: BoxFit.contain,
                      ),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
