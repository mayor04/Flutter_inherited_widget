import 'package:flutter/material.dart';
import 'package:jersey_app/screens/Home/Home.dart';
import 'package:jersey_app/screens/second/Second.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
    );
  }
}
