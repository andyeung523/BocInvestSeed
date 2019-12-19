import 'package:flutter/material.dart';
import 'package:invest_game/model/login/custom_route.dart';
import 'package:invest_game/page/home.dart';
import 'package:invest_game/page/message.dart';


class Chatbot extends StatefulWidget {
  @override
  _ChatbotState createState() => _ChatbotState();
}

class _ChatbotState extends State<Chatbot> {

  List<Message> message = [
    Message('test1'),
    Message('test2'),
    Message('test3'),
    Message('test4'),
  ];


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

        title: Text(
          "Chat with Mr Bank",
          style: TextStyle(color: Colors.white)
        ),
        // Set the background color of the App Bar
        
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: message.map((m) => Text('${m.message}')).toList(),
        
      ),
      // Set the bottom navigation bar
      
    );
  }
  
}