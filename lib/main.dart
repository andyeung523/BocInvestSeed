import 'package:flutter/material.dart';
import 'package:invest_game/page/home.dart';
import 'package:invest_game/page/loading.dart';
import 'package:invest_game/page/login.dart';


void main() => runApp(MaterialApp(
    initialRoute: '/login',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/login': (context) => Login(),
    }
));