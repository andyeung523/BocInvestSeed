import 'package:flutter/material.dart';
import 'customIcons.dart';
import 'data.dart';
import 'dart:math';
import 'dart:io';
// import 'package:oauth2/oauth2.dart' as oauth2;
import 'package:oauth2/oauth2.dart';
import 'package:invest_game/model/login/stockAPI.dart';

class PersonalGoal extends StatefulWidget {
  @override
  _PersonalGoalState createState() => _PersonalGoalState();
}

class _PersonalGoalState extends State<PersonalGoal> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
 
          child:Column(
            //padding: EdgeInsets.only(top: 12),
            children :<Widget>[
               FittedBox(
                      child: Image.asset('assets/goal.png'),
                      fit: BoxFit.fill,
              ),   

              Row(
              
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                  child: new Container(
                    height: 75.0,
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    padding: EdgeInsets.all(15.0),
                    color: Color.fromRGBO(255, 210, 213, 1),
                    child: Text('How many years of investment experience do you have?'),
                  ),
                  ),
                ),
                
                Expanded(
                  
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                  child: new Container(
                    height: 75.0,
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    padding: EdgeInsets.all(15.0),
                    color: Color.fromRGBO(240, 240, 240, 1),
                    child: Text('A. One to three years'),
                    alignment: Alignment.centerLeft,
                  ),
                  ),
                ),
              ],
            ),

            Row(
              
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                  child: new Container(
                    height: 75.0,
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    padding: EdgeInsets.all(15.0),
                    color: Color.fromRGBO(255, 210, 213, 1),
                    child: Text('What kind of investment product(s) are you interested in?')
                  ),
                  ),
                ),
                
                Expanded(
                  
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                  child: new Container(
                    height: 75.0,
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    padding: EdgeInsets.all(15.0),
                    color: Color.fromRGBO(240, 240, 240, 1),
                    child: Text('B. Foreign Stock'),
                    alignment: Alignment.centerLeft,
                  ),
                  ),
                ),
              ],
            ),

            Row(
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                  child: new Container(
                    height: 75.0,
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    padding: EdgeInsets.all(15.0),
                    color: Color.fromRGBO(255, 210, 213, 1),
                    child: Text('What kind of investments product(s) have you ever invested in?'),
                  ),
                  ),
                ),
                
                Expanded(
                  
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                  child: new Container(
                    height: 75.0,
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    padding: EdgeInsets.all(15.0),
                    color: Color.fromRGBO(240, 240, 240, 1),
                    child: Text('A. Hong Kong Stock'),
                    alignment: Alignment.centerLeft,
                  ),
                  ),
                ),
              ],
            ),

            Row(
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                  child: new Container(
                    height: 75.0,
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    padding: EdgeInsets.all(15.0),
                    color: Color.fromRGBO(255, 210, 213, 1),
                    child: Text('Which type of channel(s) do you usually rely on when investing?'),
                  ),
                  ),
                ),
                
                Expanded(
                  
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                  child: new Container(
                    height: 75.0,
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    padding: EdgeInsets.all(15.0),
                    color: Color.fromRGBO(240, 240, 240, 1),
                    child: Text('C. Bokers'),
                    alignment: Alignment.centerLeft,
                  ),
                  ),
                ),
              ],
            ),

            Row(
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                  child: new Container(
                    height: 75.0,
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    padding: EdgeInsets.all(15.0),
                    color: Color.fromRGBO(255, 210, 213, 1),
                    child: Text('I always have planning before making decision.'),
                  ),
                  ),
                ),
                
                Expanded(
                  
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                  child: new Container(
                    height: 75.0,
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    padding: EdgeInsets.all(15.0),
                    color: Color.fromRGBO(240, 240, 240, 1),
                    child: Text('A. Yes'),
                    alignment: Alignment.centerLeft,
                  ),
                  ),
                ),
              ],
            ),
            
            Row(
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                  child: new Container(
                    height: 85.0,
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    padding: EdgeInsets.all(15.0),
                    color: Color.fromRGBO(255, 210, 213, 1),
                    child: Text('What percentage of your net asset value do you want your invest to take?'),
                  ),
                  ),
                ),
                
                Expanded(
                  
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                  child: new Container(
                    height: 85.0,
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    padding: EdgeInsets.all(15.0),
                    color: Color.fromRGBO(240, 240, 240, 1),
                    child: Text('A. Less than 25%'),
                    alignment: Alignment.centerLeft,
                  ),
                  ),
                ),
              ],
            ),
            
            Row(
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                  child: new Container(
                    height: 75.0,
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    padding: EdgeInsets.all(15.0),
                    color: Color.fromRGBO(255, 210, 213, 1),
                    child: Text('Do you have a regular saving habit?'),
                  ),
                  ),
                ),
                
                Expanded(
                  
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                  child: new Container(
                    height: 75.0,
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    padding: EdgeInsets.all(15.0),
                    color: Color.fromRGBO(240, 240, 240, 1),
                    child: Text('B. No'),
                    alignment: Alignment.centerLeft,
                  ),
                  ),
                ),
              ],
            ),

            Row(
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                  child: new Container(
                    height: 130.0,
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    padding: EdgeInsets.all(15.0),
                    color: Color.fromRGBO(255, 210, 213, 1),
                    child: Text('What is(are) your saving goals?'),
                  ),
                  ),
                ),
                
                Expanded(
                  
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                  child: new Container(
                    height: 130.0,
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    padding: EdgeInsets.all(15.0),
                    color: Color.fromRGBO(240, 240, 240, 1),
                    child: Text('A. A Trip to Europe, \nB. Buy a Residential Flat, \nC. Retirement Plan',
                    style: TextStyle(fontSize: 13.0),),
                    alignment: Alignment.centerLeft,
                  ),
                  ),
                ),
              ],
            ),
            
            Row(
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                  child: new Container(
                    height: 150.0,
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    padding: EdgeInsets.all(15.0),
                    color: Colors.grey[300],
                    child: Text('Personalized Result:\n- You are a CONSERVATIVE INVESTOR. \n- The following types of investment products suit you:\nSTOCKS IN MAIN BOARD',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  ),
                  ),
                ),
              
              ],
            ),

             Row(
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                  child: new Container(
                    
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    padding: EdgeInsets.all(15.0),
                    color: Colors.transparent,
                    child: FittedBox(
                      child: Image.asset('assets/scrolling_4_chart.png'),
                      fit: BoxFit.fill,
                    ),   
                    
                  ),
                  ),
                ),
              
              ],
            ),

            ],
      ),

    

      
    );
  }
}