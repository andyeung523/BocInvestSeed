import 'package:flutter/material.dart';
import 'package:invest_game/model/login/dashboard_screen.dart';
import 'package:invest_game/model/login/custom_route.dart';
import 'package:invest_game/page/home.dart';


class DreamHub extends StatefulWidget {
  @override
  _DreamHubState createState() => _DreamHubState();
}

class _DreamHubState extends State<DreamHub> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child:
          Center(
            child: Container(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center, 
                mainAxisSize: MainAxisSize.max, 
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                    Image.asset( //Dream Hub
                    'assets/dream_hub.png', width: 100.0, height: 100.0,
                    ),
                    SizedBox(
                      width: 250,
                      // height: double.infinity,
                      child: FlatButton(
                        padding: EdgeInsets.all(12.0),
                        color: Color.fromRGBO(159, 42, 51, 1),
                        onPressed: () {
                          Navigator.of(context).pushReplacement(FadePageRoute(
                            builder: (context) => Home(),
                          ));
                        },
                        child: Text(
                          'Chat Bot',
                          style: TextStyle(fontSize: 20.0,color: Colors.white),
                        ),
                      ),
                    ),
                ],
              )
            ),
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