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
  _KnowlegeState createState() => _KnowlegeState();
}

class _KnowlegeState extends State<Knowledge> {
  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Center(
                  child: Container(
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Column(  
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                height: 150,
                                child: Text("Tips",style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 3.5)),
                                //color: Colors.black,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 200,
                                child: CircleAvatar(
                                          backgroundImage: AssetImage('assets/rocket.JPG'),
                                        )
                                //color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                height: 100,
                                child: Text("You\'re on mpdule 1 of 10",style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 1)),
                                //color: Colors.black,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    //color: colours,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}