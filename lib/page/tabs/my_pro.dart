import 'package:flutter/material.dart';
import 'customIcons.dart';
import 'data.dart';
import 'dart:math';
import 'dart:io';
// import 'package:oauth2/oauth2.dart' as oauth2;
import 'package:oauth2/oauth2.dart';
import 'package:invest_game/model/login/stockAPI.dart';

class Mypro extends StatefulWidget {
  @override
  _MyproState createState() => _MyproState();
}

var cardAspectRatio = 12.0 / 16.0;
var widgetAspectRatio = cardAspectRatio * 1.2;

class _MyproState extends State<Mypro> {
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
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[

              FittedBox(
                      child: Image.asset('assets/account.jpg'),
                      fit: BoxFit.fill,
              ),   
              
              Container(
                color: Color.fromRGBO(50, 230, 221, 1),
                height: 200,
                width: double.maxFinite,
                child: Text('reserved',style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 1.5),),
                alignment: Alignment.center,
                
              ),Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 45,
                    margin: EdgeInsets.all(1.0),
                    //padding: EdgeInsets.fromLTRB(10, 30, 30, 15),
                    color: Color.fromRGBO(159, 42, 51, 1),
                    child: Center(child: Text('Paid Interest', style:TextStyle(color: Colors.white ))),
                    alignment: Alignment.centerLeft,
                  ),
                ),
                
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 45,
                    margin: EdgeInsets.all(1.0),

                    // padding: EdgeInsets.all(30.0),
                    color: Color.fromRGBO(159, 42, 51, 1),
                    child: Center(child: Text('\$15,830', style:TextStyle(color: Colors.white ))),
                    alignment: Alignment.centerLeft,
                  ),
                ),
              ],
            ),//copy here
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 45,
                    margin: EdgeInsets.all(1.0),
                    //padding: EdgeInsets.fromLTRB(10, 30, 30, 15),
                    color: Color.fromRGBO(159, 42, 51, 1),
                    child: Center(child: Text('Total Market Price', style:TextStyle(color: Colors.white ))),
                    alignment: Alignment.centerLeft,
                  ),
                ),
                
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 45,
                    margin: EdgeInsets.all(1.0),

                    // padding: EdgeInsets.all(30.0),
                    color: Color.fromRGBO(159, 42, 51, 1),
                    child: Center(child: Text('\$88888888', style:TextStyle(color: Colors.white ))),
                    alignment: Alignment.centerLeft,
                  ),
                ),
              ],
            ),//copy here
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 45,
                    margin: EdgeInsets.all(1.0),
                    //padding: EdgeInsets.fromLTRB(10, 30, 30, 15),
                    color: Color.fromRGBO(159, 42, 51, 1),
                    child: Center(child: Text('Total Investment', style:TextStyle(color: Colors.white ))),
                    alignment: Alignment.centerLeft,
                  ),
                ),
                
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 45,
                    margin: EdgeInsets.all(1.0),

                    // padding: EdgeInsets.all(30.0),
                    color: Color.fromRGBO(159, 42, 51, 1),
                    child: Center(child: Text('\$888888', style:TextStyle(color: Colors.white ))),
                    alignment: Alignment.centerLeft,
                  ),
                ),
              ],
            ),//copy here
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 45,
                    margin: EdgeInsets.all(1.0),
                    //padding: EdgeInsets.fromLTRB(10, 30, 30, 15),
                    color: Color.fromRGBO(159, 42, 51, 1),
                    child: Center(child: Text('Total Profit/loss', style:TextStyle(color: Colors.white ))),
                    alignment: Alignment.centerLeft,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 45,
                    margin: EdgeInsets.all(1.0),

                    // padding: EdgeInsets.all(30.0),
                    color: Color.fromRGBO(159, 42, 51, 1),
                    child: Center(child: Text('860,000', style:TextStyle(color: Colors.white ))),
                    alignment: Alignment.centerLeft,
                  ),
                ),
              ],
            ),//copy here
            Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 20, 0, 20),
                        child:Text("Outstanding amount to be invested (HKD)",style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 1.2)) ,  
                      )
                    ],
                ),
              Row(
              children: <Widget>[
                Expanded(
                  flex: 6,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                  child: new Container(
                    height: 45.0,
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    padding: EdgeInsets.all(15.0),
                    color: Color.fromRGBO(255, 210, 213, 1),
                    child: Center(child: Text('Total Balance')),
                  ),
                  ),
                ),
                
                Expanded(
                  
                  flex: 4,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                  child: new Container(
                    height: 45.0,
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    padding: EdgeInsets.all(15.0),
                    color: Color.fromRGBO(240, 240, 240, 1),
                    child: Center(child: Text('\$15, 000')),
                    alignment: Alignment.centerLeft,
                  ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 6,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                  child: new Container(
                    height: 45.0,
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    padding: EdgeInsets.all(15.0),
                    color: Color.fromRGBO(255, 210, 213, 1),
                    child: Center(child: Text('Circulating Cash')),
                  ),
                  ),
                ),
                
                Expanded(
                  
                  flex: 4,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                  child: new Container(
                    height: 45.0,
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    padding: EdgeInsets.all(15.0),
                    color: Color.fromRGBO(240, 240, 240, 1),
                    child: Center(child: Text('\$15, 000')),
                    alignment: Alignment.centerLeft,
                  ),
                  ),
                ),
              ],
            ),
            
              
            ],
            
          ),
        ),
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