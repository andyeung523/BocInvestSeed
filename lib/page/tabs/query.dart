import 'package:flutter/material.dart';
import 'package:invest_game/model/login/dashboard_screen.dart';
import 'package:invest_game/model/login/custom_route.dart';
import 'package:invest_game/page/chatbot_page.dart';
import 'package:invest_game/page/game_page.dart';
import 'package:invest_game/page/dreamhub.dart';
import 'package:invest_game/model/login/stockAPI.dart';

class Query extends StatefulWidget {
  @override
  _QueryState createState() => _QueryState();
}

class _QueryState extends State<Query> {
  StockAPI api = new StockAPI();
  int stock_code=0;
  String name_en = '';
  double price = 0.0;
  double change = 0.0;
  double change_pct = 0.0;
  double pe_ratio = 0.0;
  int turnover = 0;
  int lot_size = 0;
  @override
  void initState() {
    // TODO: implement initState
    stock_code=0;
    name_en = '';
    price = 0.0;
    change = 0.0;
    change_pct = 0.0;
    pe_ratio = 0.0;
    turnover = 0;
    lot_size=0;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Container(
        padding: EdgeInsets.fromLTRB(0, 0, 0,0),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(159, 42, 51, 1),
            title: Text("Real-Time Stock Query"),
          ),
          body: Column(
            children: <Widget>[
              Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 100,
                    width: 100,
                    //padding: EdgeInsets.fromLTRB(10, 30, 30, 15),
                    color: Color.fromRGBO(255, 210, 213, 1),
                    child: Text('  Stock Code'),
                    alignment: Alignment.centerLeft,
                  ),
                ),
                
                Expanded(
                  flex: 6,
                  child: Container(
                    height: 100,
                    width: 100,
                    padding: EdgeInsets.all(30.0),
                    color: Color.fromRGBO(240, 240, 240, 1),
                    child: TextFormField(

                             decoration: InputDecoration(
                                 hintText: 'Please search',
                                 fillColor: Color.fromRGBO(255, 210, 213, 1),
                                 focusColor: Color.fromRGBO(159, 42, 51, 1),
                                 enabledBorder: UnderlineInputBorder(      
                                   borderSide: BorderSide(color: Color.fromRGBO(159, 42, 51, 1)),   
                                 ),  
                                 focusedBorder: UnderlineInputBorder(
                                   borderSide: BorderSide(color: Colors.white),
                                 ),  
                                 filled: true,
                                 suffixIcon: IconButton(
                                     icon: Icon(Icons.search, color: Colors.black),
                                     onPressed:  ()  async {
                                       await api.get_stock_info(stock_code); 
                                     })),
                           ),
                    alignment: Alignment.centerLeft,
                  ),
                ),
              ],
            ),
            ],
          ),
          )
      ),
    );
  }
}