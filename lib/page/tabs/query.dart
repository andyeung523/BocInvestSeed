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
  final myController = TextEditingController();
  int stock_code=0;
  String name_en = 'n/a';
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
    name_en = 'n/a';
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
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(159, 42, 51, 1),
            title: Text("Real-Time Stock Query"),
          ),
          body: SingleChildScrollView(
            child: Column(
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
                    child: Center(child: Text('Stock Code')),
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
                             controller: myController,
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
                                       stock_code = int.parse(myController.text);
                                       await api.get_stock_info(stock_code);
                                       setState(() {
                                         name_en = api.get_name_en();
                                         price = api.get_price();
                                         change = api.get_change();
                                         change_pct = api.get_change_pct();
                                         pe_ratio = api.get_pe_ratio();
                                         turnover = api.get_turnover();
                                         lot_size = 500;
                                       });
                                     })),
                           ),
                    alignment: Alignment.centerLeft,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 80,
                    width: 100,
                    //padding: EdgeInsets.fromLTRB(10, 30, 30, 15),
                    color: Color.fromRGBO(255, 210, 213, 1),
                    child: Center(child: Text('Stock Code')),
                    alignment: Alignment.centerLeft,
                  ),
                ),
                
                Expanded(
                  flex: 6,
                  child: Container(
                    height: 80,
                    width: 100,
                    padding: EdgeInsets.all(30.0),
                    color: Color.fromRGBO(240, 240, 240, 1),
                    child: Text('$stock_code'),
                    alignment: Alignment.centerLeft,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 80,
                    width: 100,
                    //padding: EdgeInsets.fromLTRB(10, 30, 30, 15),
                    color: Color.fromRGBO(255, 210, 213, 1),
                    child: Center(child: Text('Name')),
                    alignment: Alignment.centerLeft,
                  ),
                ),
                
                Expanded(
                  flex: 6,
                  child: Container(
                    height: 80,
                    width: 100,
                    padding: EdgeInsets.all(30.0),
                    color: Color.fromRGBO(240, 240, 240, 1),
                    child: Text('$name_en'),
                    alignment: Alignment.centerLeft,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 80,
                    width: 100,
                    //padding: EdgeInsets.fromLTRB(10, 30, 30, 15),
                    color: Color.fromRGBO(255, 210, 213, 1),
                    child: Center(child: Text('Nominal')),
                    alignment: Alignment.centerLeft,
                  ),
                ),
                
                Expanded(
                  flex: 6,
                  child: Container(
                    height: 80,
                    width: 100,
                    padding: EdgeInsets.all(30.0),
                    color: Color.fromRGBO(240, 240, 240, 1),
                    child: Text('$price'),
                    alignment: Alignment.centerLeft,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 80,
                    width: 100,
                    //padding: EdgeInsets.fromLTRB(10, 30, 30, 15),
                    color: Color.fromRGBO(255, 210, 213, 1),
                    child: Center(child: Text('Change')),
                    alignment: Alignment.centerLeft,
                  ),
                ),
                
                Expanded(
                  flex: 6,
                  child: Container(
                    height: 80,
                    width: 100,
                    padding: EdgeInsets.all(30.0),
                    color: Color.fromRGBO(240, 240, 240, 1),
                    child: Text('$change'),
                    alignment: Alignment.centerLeft,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 80,
                    width: 100,
                    //padding: EdgeInsets.fromLTRB(10, 30, 30, 15),
                    color: Color.fromRGBO(255, 210, 213, 1),
                    child: Center(child: Text('Change %')),
                    alignment: Alignment.centerLeft,
                  ),
                ),
                
                Expanded(
                  flex: 6,
                  child: Container(
                    height: 80,
                    width: 100,
                    padding: EdgeInsets.all(30.0),
                    color: Color.fromRGBO(240, 240, 240, 1),
                    child: Text('$change_pct'),
                    alignment: Alignment.centerLeft,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 80,
                    width: 100,
                    //padding: EdgeInsets.fromLTRB(10, 30, 30, 15),
                    color: Color.fromRGBO(255, 210, 213, 1),
                    child: Center(child: Text('Turnover\n(Thousand)')),
                    alignment: Alignment.centerLeft,
                  ),
                ),
                
                Expanded(
                  flex: 6,
                  child: Container(
                    height: 80,
                    width: 100,
                    padding: EdgeInsets.all(30.0),
                    color: Color.fromRGBO(240, 240, 240, 1),
                    child: Text('$stock_code'),
                    alignment: Alignment.centerLeft,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 80,
                    width: 100,
                    //padding: EdgeInsets.fromLTRB(10, 30, 30, 15),
                    color: Color.fromRGBO(255, 210, 213, 1),
                    child: Center(child: Text('Lot Size')),
                    alignment: Alignment.centerLeft,
                  ),
                ),
                
                Expanded(
                  flex: 6,
                  child: Container(
                    height: 80,
                    width: 100,
                    padding: EdgeInsets.all(30.0),
                    color: Color.fromRGBO(240, 240, 240, 1),
                    child: Text('$lot_size'),
                    alignment: Alignment.centerLeft,
                  ),
                ),
              ],
            ),//copy here
            ],
          ),
          )
          
          )
      ),
    );
  }
}