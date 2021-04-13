import 'package:flutter/material.dart';
import 'package:jersey_app/compnent/numberComponent.dart';
import 'package:jersey_app/screens/Home/home_screen.dart';
import 'package:jersey_app/screens/second/second_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return NumberDisplay(
      child: MaterialApp(
        title: 'Flutter Demo', debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          splashColor: Colors.red,
        ),
        // home: HomeScreen(),
        initialRoute: '/',
        routes: {
          '/': (context) => HomeScreen(),
          '/second': (context) => SecondScreen(),
        },
        onGenerateRoute: (routeSettings) {
          if (routeSettings.name == 'second') {
            return MaterialPageRoute(
              builder: (context) => HomeScreen(),
            );
          }
          return null;
        },
      ),
    );
  }
}
