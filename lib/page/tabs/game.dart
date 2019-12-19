import 'package:flutter/material.dart';
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

class Game extends StatefulWidget {
  @override
  _GameState createState() => _GameState();
}

var cardAspectRatio = 12.0 / 16.0;
var widgetAspectRatio = cardAspectRatio * 1.2;

class _GameState extends State<Game> {
var currentPage = images.length - 1.0;
var _price;
  //here
  
  StockAPI api = new StockAPI();
  @override
  void initState(){
    super.initState();
    _price= 0.0;
  }
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: images.length - 1);

    controller.addListener(() {
      setState(() {
        currentPage = controller.page;
      });
    });

    return Container(
      
      child: Scaffold(
        resizeToAvoidBottomInset: false,  
        backgroundColor: Colors.transparent,
        body: 
        SingleChildScrollView(
          child:Column(
            //padding: EdgeInsets.only(top: 12),
            children :<Widget>[
              Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 100,
                    width: 100,
                    //padding: EdgeInsets.fromLTRB(10, 30, 30, 15),
                    color: Color.fromRGBO(255, 210, 213, 1),
                    child: Text('  Account'),
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
                    child: Text('XXX Account'),
                    alignment: Alignment.centerLeft,
                  ),
                ),
              ],
            ),//copy here
            Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 100,
                    width: 100,
                    //padding: EdgeInsets.fromLTRB(10, 30, 30, 15),
                    color: Color.fromRGBO(255, 210, 213, 1),
                    child: Text('  Other Type'),
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
                    child: Row(
                      children: <Widget>[
                        Radio(),
                        Text('Limit Order'),
                        Radio(),
                        Text('Market Order')
                      ],
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
                    height: 100,
                    width: 100,
                    //padding: EdgeInsets.fromLTRB(10, 30, 30, 15),
                    color: Color.fromRGBO(255, 210, 213, 1),
                    child: Text('  BuySell'),
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
                    child: Row(
                      children: <Widget>[
                        Radio(),
                        Text('Buy'),
                        Radio(),
                        Text('Sell')
                      ],
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                ),
              ],
            ),//copy here
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
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Query()),
                                );
                              })),
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                ),
              ],
            ),//copy here
            
            ], 
          )  ),
      ),
    );
  }
}

class CardScrollWidget extends StatelessWidget {
  var currentPage;
  var padding = 20.0;
  var verticalInset = 20.0;

  CardScrollWidget(this.currentPage);

  @override
  Widget build(BuildContext context) {
    return new AspectRatio(
      aspectRatio: widgetAspectRatio,
      child: LayoutBuilder(builder: (context, contraints) {
        var width = contraints.maxWidth;
        var height = contraints.maxHeight;

        var safeWidth = width - 2 * padding;
        var safeHeight = height - 2 * padding;

        var heightOfPrimaryCard = safeHeight;
        var widthOfPrimaryCard = heightOfPrimaryCard * cardAspectRatio;

        var primaryCardLeft = safeWidth - widthOfPrimaryCard;
        var horizontalInset = primaryCardLeft / 2;

        List<Widget> cardList = new List();

        for (var i = 0; i < images.length; i++) {
          var delta = i - currentPage;
          bool isOnRight = delta > 0;

          var start = padding +
              max(
                  primaryCardLeft -
                      horizontalInset * -delta * (isOnRight ? 15 : 1),
                  0.0);

          var cardItem = Positioned.directional(
            top: padding + verticalInset * max(-delta, 0.0),
            bottom: padding + verticalInset * max(-delta, 0.0),
            start: start,
            textDirection: TextDirection.rtl,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(3.0, 6.0),
                      blurRadius: 10.0)
                ]),
                child: AspectRatio(
                  aspectRatio: cardAspectRatio,
                  child: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Image.asset(images[i], fit: BoxFit.cover),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 8.0),
                              child: Text(title[i],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25.0,
                                      fontFamily: "SF-Pro-Text-Regular")),
                            ),
                            
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 12.0, bottom: 12.0),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 22.0, vertical: 6.0),
                                decoration: BoxDecoration(
                                    color: Colors.blueAccent,
                                    borderRadius: BorderRadius.circular(20.0)),
                                child: Text("Read Later",
                                    style: TextStyle(color: Colors.white)),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
          cardList.add(cardItem);
        }
        return Stack(
          children: cardList,
        );
      }),
    );
  }
}



              //FlatButton(
              //          padding: EdgeInsets.all(12.0),
              //          color: Color.fromRGBO(159, 42, 51, 1),
              //          onPressed : () async {
              //            print('object');
              //            double p = await api.getPrice(0001) ;
              //            api.get_stock_info(1);
              //            setState(() {
              //              _price = p;
              //            });
              //          }
              //            ),
              //Text('$_price'),