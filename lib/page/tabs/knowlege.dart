import 'package:flutter/material.dart';
import 'package:invest_game/page/tabs/my_pro.dart';
import '../home.dart';
import 'customIcons.dart';
import 'data.dart';
import 'dart:math';
import 'dart:io';
import 'package:invest_game/model/login/custom_route.dart';
// import 'package:oauth2/oauth2.dart' as oauth2;
import 'package:oauth2/oauth2.dart';
import 'package:invest_game/model/login/stockAPI.dart';
import 'package:invest_game/page/tabs/query.dart';


class Knowledge extends StatefulWidget {
  @override
  _KnowledgeState createState() => _KnowledgeState();
}

class _KnowledgeState extends State<Knowledge> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Text('knowladge'),
          ),
        ),
      ),
    );
  }
}