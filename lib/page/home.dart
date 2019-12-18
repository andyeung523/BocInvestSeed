import 'package:flutter/material.dart';
import 'package:invest_game/model/login/dashboard_screen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              'assets/logo.png', width: 100.0, height: 100.0,
            ),
          ],
        )
      )
    );
    //return MaterialApp(
    //  title: 'Dashboard',
    //  theme: ThemeData(
    //    primarySwatch: Colors.deepOrange,
    //    accentColor: Colors.orange,
    //    cursorColor: Colors.orange,
    //    textTheme: TextTheme(
    //      display2: TextStyle(
    //        fontFamily: 'OpenSans',
    //        fontSize: 45.0,
    //        color: Colors.orange,
    //      ),
    //      button: TextStyle(
    //        fontFamily: 'OpenSans',
    //      ),
    //      subhead: TextStyle(fontFamily: 'NotoSans'),
    //      body1: TextStyle(fontFamily: 'NotoSans'),
    //    ),
    //  ),
    //  home: DashboardScreen(),
    //);
  }
}