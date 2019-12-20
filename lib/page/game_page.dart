import 'package:flutter/material.dart';
import 'package:invest_game/model/login/stockAPI.dart';
import 'package:invest_game/page/tabs/knowlege.dart';
import 'tabs/top_idea.dart';
import 'tabs/search.dart';
import 'tabs/game.dart';
import 'package:invest_game/model/login/dashboard_screen.dart';
import 'package:invest_game/model/login/custom_route.dart';
import 'package:invest_game/page/home.dart';
import 'package:invest_game/page/tabs/my_pro.dart';
import 'package:invest_game/page/tabs/personal_goal.dart';
import 'package:invest_game/page/tabs/market.dart';



class Gamepage extends StatefulWidget {
  @override
  _GamepageState createState() => _GamepageState();
}

class _GamepageState extends State<Gamepage> with SingleTickerProviderStateMixin {
  // Create a tab controller
  TabController controller;

  @override
  void initState() {
    super.initState();
    var stockNUM = [1,2,3];
    final authorizationEndpoint =
    Uri.parse("http://example.com/oauth2/authorization");
    // Initialize the Tab Controller
    controller = TabController(length: 5, vsync: this);
    StockAPI api = new StockAPI();
  }

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(159, 42, 51,1),
        leading: IconButton(
          icon: Icon(Icons.home),
          color: Colors.white,
          onPressed: () {
            Navigator.of(context).pushReplacement(FadePageRoute(
            builder: (context) => Home(),
            ));
          },
        ),
        centerTitle: true,
        title: Text(
          "InvestSeed Virtual Trading",
          style: TextStyle(color: Colors.white)
        ),
        // Set the background color of the App Bar
        
      ),
      body: TabBarView(
        // Add tabs as widgets
        children: <Widget>[Mypro(), PersonalGoal(), Game(),Top_idea(), Knowledge()],
        // set the controller
        controller: controller,
      ),
      // Set the bottom navigation bar
      bottomNavigationBar: Material(

        // set the color of the bottom navigation bar
        color: Color.fromRGBO(159, 42, 51,1),
        // set the tab bar as the child of bottom navigation bar
        child: TabBar(
          indicatorColor: Colors.black,
          labelColor: Colors.white,

          tabs: <Tab>[
            Tab(
              // set icon to the tab
              icon: Icon(Icons.account_circle),
              text: "Me",
            ),
            Tab(
              icon: Icon(Icons.done_all),
              text: "Goal"
            ),
            Tab(
              icon: Icon(Icons.monetization_on),
              text: "Trading"
            ),
            Tab(
              icon: Icon(Icons.multiline_chart),
              text: "Market"
            ),
            Tab(
              icon: Icon(Icons.library_books),
              text: "Tips"
            )
          ],
          // setup the controller
          controller: controller,
        ),
      ),
    );
  }
}