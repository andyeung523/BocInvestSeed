import 'package:flutter/material.dart';
import 'package:invest_game/model/login/stockAPI.dart';
import 'tabs/top_idea.dart';
import 'tabs/search.dart';
import 'tabs/game.dart';
import 'package:invest_game/model/login/dashboard_screen.dart';
import 'package:invest_game/model/login/custom_route.dart';
import 'package:invest_game/page/home.dart';



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
    controller = TabController(length: 3, vsync: this);
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
        leading: IconButton(
          icon: Icon(Icons.home),
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).pushReplacement(FadePageRoute(
            builder: (context) => Home(),
            ));
          },
        ),
        // Title
        title: Text(
          "Investment Game",
          style: TextStyle(color: Colors.black)
        ),
        // Set the background color of the App Bar
        backgroundColor: Colors.white,
      ),
      body: TabBarView(
        // Add tabs as widgets
        children: <Widget>[Game(), Search(), Top_idea()],
        // set the controller
        controller: controller,
      ),
      // Set the bottom navigation bar
      bottomNavigationBar: Material(
        // set the color of the bottom navigation bar
        color: Colors.white,
        // set the tab bar as the child of bottom navigation bar
        child: TabBar(
          labelColor: Colors.black,

          tabs: <Tab>[
            Tab(
              // set icon to the tab
              icon: Icon(Icons.add_circle_outline),
              text: "Game",
            ),
            Tab(
              icon: Icon(Icons.search),
              text: "Search"
            ),
            Tab(
              icon: Icon(Icons.trending_up),
              text: "Top Idea"
            ),
          ],
          // setup the controller
          controller: controller,
        ),
      ),
    );
  }
}