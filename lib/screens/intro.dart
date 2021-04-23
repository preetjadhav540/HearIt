import 'package:flutter/material.dart';
import 'package:hearit/app.dart';

class Intro extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //   statusBarColor: Colors.white,
    //   statusBarIconBrightness: Brightness.dark,
    //   systemNavigationBarColor: Colors.white,
    //   systemNavigationBarIconBrightness: Brightness.dark,
    // ));
    return Scaffold(
      backgroundColor: Colors.orange.shade50,
      appBar: AppBar(
        title: Text('Indus'),
        centerTitle: true,
        backgroundColor: Colors.orange.shade50,
        elevation: 0,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
            child: Text(
              'Hear the environment',
              style: TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.bold, color: Color(0xFF3E2723), fontSize: 30.0),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Card(
                    color: Colors.white,
                    shadowColor: Colors.orangeAccent.shade400,
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                    child: Container(
                      height: 120,
                      width: 220,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(16.0),
                      child: Text('Know how different objects from our surrounding sound and learn from this app.',
                          style: TextStyle(fontFamily: 'Roboto',
                              fontSize: 18.0, color: Colors.black87, fontWeight: FontWeight.w500)),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    height: 120.0,
                    width: 120.0,
                    child: Image.asset(
                      'assets/images/face1.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    height: 220.0,
                    width: 120.0,
                    child: Image.asset(
                      'assets/images/guide.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Card(
                    color: Colors.white,
                    shadowColor: Colors.orangeAccent.shade400,
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                    child: Container(
                        height: 240.0,
                        width: 220.0,
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text('How to use this app?', style: Theme.of(context).textTheme.headline6,),),
                            Padding(padding: EdgeInsets.all(8.0),
                              child: Text('• Find a flat surface for \n\t placing the objects.',
                                style: TextStyle(fontFamily: 'Roboto', fontSize: 18.0, color: Colors.black87, fontWeight: FontWeight.w500),),),
                            Padding(padding: EdgeInsets.all(8.0),
                              child: Text('• Keep your Internet \n\t connection active.',
                                style: TextStyle(fontFamily: 'Roboto', fontSize: 18.0, color: Colors.black87, fontWeight: FontWeight.w500),),),
                            Padding(padding: EdgeInsets.all(8.0),
                              child: Text('• Place objects and \n\t enjoy their sound.',
                                style: TextStyle(fontFamily: 'Roboto', fontSize: 18.0, color: Colors.black87, fontWeight: FontWeight.w500),),),
                          ],
                        )
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Container(
              height: 240,
              child: Image.asset(
                'assets/images/celebration.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Ready to begin ?',
              style: TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.bold, color: Color(0xFF3E2723), fontSize: 30.0),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
              padding: EdgeInsets.fromLTRB(8, 8, 8, 32),
              alignment: Alignment.center,
              child: Center(
                  child: ButtonTheme(
                    height: 50.0,
                    minWidth: 160.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(16.0),
                    ),
                    child: RaisedButton(
                      onPressed: () => {
                        Navigator.pushReplacementNamed(context,HomeRoute)
                      },
                      color: Colors.orangeAccent.shade400,
                      textColor: Colors.white,
                      elevation: 4,
                      splashColor: Colors.white,
                      child: Text('Get started', style: TextStyle(fontFamily: 'Roboto', fontSize: 20, fontWeight: FontWeight.w500),),
                    ),
                  )
              )
          ),
        ],
      ),
    );
  }
}