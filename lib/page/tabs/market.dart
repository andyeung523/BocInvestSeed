import 'package:flutter/material.dart';

class Market extends StatefulWidget {
  @override
  _MarketState createState() => _MarketState();
}

class _MarketState extends State<Market> {
  

  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    return SingleChildScrollView(
 
          child:Column(
            //padding: EdgeInsets.only(top: 12),
            children :<Widget>[

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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Stocks',
                        style: TextStyle( fontSize: 20.0),),
                        Text('${now.year} - ' + '${now.month} - ' + '${now.day}',
                        style: TextStyle( fontSize: 18.0),),
                      ],
                    ),
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
                    child: Row(
                      children: <Widget>[
                        Expanded( child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('3988.HK',
                            style: TextStyle( fontSize: 20.0),),
                            Text('Bank of China Limited',
                            style: TextStyle( fontSize: 18.0),),
                          ],
                        ),
                        ),
                        Expanded( child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text('3.320',textAlign: TextAlign.right,
                            style: TextStyle(fontSize: 30.0),),
                          ],
                        ),
                        ),
                      ],
                    ),
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
                    child: Row(
                      children: <Widget>[
                        Expanded(flex: 4, child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('0001.HK',
                            style: TextStyle( fontSize: 20.0),),
                            Text('CK Hutchision Holdings Limited',
                            style: TextStyle( fontSize: 12.0),),
                          ],
                        ),
                        ),
                        Expanded( flex: 2, child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text('74.65',textAlign: TextAlign.right,
                            style: TextStyle(fontSize: 30.0),),
                          ],
                        ),
                        ),
                      ],
                    ),
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
                    child: Row(
                      children: <Widget>[
                        Expanded( flex: 4,child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('0002.HK',
                            style: TextStyle( fontSize: 20.0),),
                            Text('CLP Holdings Limited',
                            style: TextStyle( fontSize: 18.0),),
                          ],
                        ),
                        ),
                        Expanded( flex: 2,child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text('82.30',textAlign: TextAlign.right,
                            style: TextStyle(fontSize: 30.0),),
                          ],
                        ),
                        ),
                      ],
                    ),
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
                    child: Row(
                      children: <Widget>[
                        Expanded( flex: 4,child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('0005.HK',
                            style: TextStyle( fontSize: 20.0),),
                            Text('HSBC Holdings plc',
                            style: TextStyle( fontSize: 18.0),),
                          ],
                        ),
                        ),
                        Expanded( flex: 2,child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text('60.70',textAlign: TextAlign.right,
                            style: TextStyle(fontSize: 30.0),),
                          ],
                        ),
                        ),
                      ],
                    ),
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
                    child: Row(
                      children: <Widget>[
                        Expanded( flex: 4,child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('0006.HK',
                            style: TextStyle( fontSize: 20.0),),
                            Text('Power Assets Holdings Limited',
                            style: TextStyle( fontSize: 15.0),),
                          ],
                        ),
                        ),
                        Expanded( flex: 2,child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text('56.85',textAlign: TextAlign.right,
                            style: TextStyle(fontSize: 30.0),),
                          ],
                        ),
                        ),
                      ],
                    ),
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
                    child: Row(
                      children: <Widget>[
                        Expanded( flex: 4,child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('0011.HK',
                            style: TextStyle( fontSize: 20.0),),
                            Text('Hang Seng Bank Limited',
                            style: TextStyle( fontSize: 18.0),),
                          ],
                        ),
                        ),
                        Expanded( flex: 2,child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text('161.00',textAlign: TextAlign.right,
                            style: TextStyle(fontSize: 30.0),),
                          ],
                        ),
                        ),
                      ],
                    ),
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
                    child: Text('How many years of investment experience do you have?'),
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
                    child: Text('How many years of investment experience do you have?'),
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