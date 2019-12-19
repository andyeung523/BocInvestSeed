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

  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    border: Border.all(),
  );
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

        title: Text(
          "Chat with Mr Bank",
          style: TextStyle(color: Colors.white)
        ),
        // Set the background color of the App Bar
        
      ),
      
      floatingActionButton: 
        FloatingActionButton(
      
        
        // When the user presses the button, show an alert dialog containing
        // the text that the user has entered into the text field.
        onPressed: () {
          return showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                // Retrieve the text the that user has entered by using the
                // TextEditingController.
                content: Text(myController.text),
              );
            },
          );
        }, 
        tooltip: 'Show me the value!',
        child: Icon(
          Icons.send,
          color: Colors.white,
        ),
      ),
      
      body: Row(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.cyan,
              child: Text('1'),
            ),
          ),
          
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.amber,
              child: Text('3'),
            ),
          ),
        ],
      ),



        bottomNavigationBar: 
        BottomAppBar(
                  child: Padding(
            padding: const EdgeInsets.fromLTRB(20.0,0,20.0,20.0),
            child: TextField(
              style: TextStyle(fontSize: 25.0),
              controller: myController,
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}