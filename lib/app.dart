import 'package:flutter/material.dart';
import 'package:hearit/screens/intro.dart';
import 'package:hearit/screens/ar.dart';
import 'package:hearit/screens/home.dart';
import 'package:hearit/screens/lens.dart';
import 'text_styles.dart';

const IntroRoute = '/';
const HomeRoute = '/home';
const ArRoute = '/ar';
const LensRoute = '/lens';

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: _routes(),
      debugShowCheckedModeBanner: false,
      theme: _myTheme(),
    );
  }

  RouteFactory _routes(){
    return (settings){
      Widget screen;
      switch(settings.name){
        case IntroRoute:
          screen = Intro();
          break;
        case HomeRoute:
          screen = Home();
          break;
        case ArRoute:
          screen = Ar();
          break;
        case LensRoute:
          screen = Lens();
          break;
        default : return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }

  ThemeData _myTheme(){
    return ThemeData(
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(title: TitleTextStyle),
          centerTitle: true,
        ),
        accentColor: Colors.orangeAccent.shade400,
        textTheme: TextTheme(
          headline6: HeadlineTextStyle,
          bodyText1: BodyTextStyle,
        )
    );
  }
}