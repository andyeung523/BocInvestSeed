import 'package:flutter/material.dart';
import 'package:invest_game/model/login/custom_route.dart';
import 'package:invest_game/page/home.dart';
import 'package:invest_game/page/message.dart';


class Chatbot extends StatefulWidget {
  @override
  _ChatbotState createState() => _ChatbotState();
}

class _ChatbotState extends State<Chatbot> {

  @override
  void initState() {
    super.initState();
  }
  static int count = 0;
  
  String question1 = " ";
  String question2 = " ";
  String question3 = " ";
  String ans1 = " ";
  String ans2 = " ";
  String ans3 = " ";
  
  Color color1 = Colors.transparent;
  Color color2 = Colors.transparent;
  Color color3 = Colors.transparent;
  Color ansColor1 = Colors.transparent;
  Color ansColor2 = Colors.transparent;
  Color ansColor3 = Colors.transparent;

  List<Message> message = [
    Message('Hello Ms. Lee, what can I help you? You may ask me questions regarding stock trading: \n-	Trading hours of HKEX+ \n-	Pricing mechanism for stock trading \n-	Etc. Or schedule meeting with a Banker from BOCHK for advice. '),
    Message('Upon the completion of stock transaction, relevant shares and settlement amount will be credited to the investors’ securities accounts or settlement accounts within the second working day after the transaction date. To provide investors with the convenience of day trading, many banks and securities brokerage firms offer special stock settlement arrangement such that investors may use the proceeds from the sale of shares to perform other securities to perform other securities transaction immediately.'),
    Message('Dear Ms. Lee, please state the date and time you prefer to us, I will match banker for you.'),
    Message('Here are the availability of Banker:\n1. Mr. Wong – Diamond Hill Branch\n2. Ms. Chan – Fo Tan Branch\n3. Ms. Tse – Happy Valley Branch\nPlease confirm your choice.'),
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
          count += 1;
          // Message m = new Message(myController.text);
          setState(() {
            switch(count) {
              case 1: {
                color1 = Color.fromRGBO(240, 240, 240, 1);
                question1 = myController.text;
                ansColor1 = Color.fromRGBO(255, 210, 213, 1);
                ans1 = message[1].message;
              }
              break;
              case 2: {
                color2 = Color.fromRGBO(240, 240, 240, 1);
                question2 = myController.text;
                ansColor2 = Color.fromRGBO(255, 210, 213, 1);
                ans2 = message[2].message;
              }
              break;
              case 3: {
                color3 = Color.fromRGBO(240, 240, 240, 1);
                question3 = myController.text;
                ansColor3 = Color.fromRGBO(255, 210, 213, 1);
                ans3 = message[3].message;
              }
              break;
              default: {

              }
              break;
            }
            myController.clear();
          });
          // message.add(myController.text);
          
        }, 
        // tooltip: 'Show me the value!',
        child: Icon(
          Icons.send,
          color: Colors.white,
        ),
      ),
      
      body: SingleChildScrollView(
              child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(45.0),
                  child: new Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    padding: EdgeInsets.all(20.0),
                    color: Color.fromRGBO(255, 210, 213, 1),
                    child: Text('${message[0].message}'),
                  ),
                  ),
                ),
                
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(30.0),
                    color: Colors.transparent,
                    child: Text(' '),
                  ),
                ),
              ],
            ),
            //row 2
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(45.0),
                  child: new Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    padding: EdgeInsets.all(20.0),
                    color: Colors.transparent,
                    child: Text(' '),
                  ),
                  ),
                ),
                
                Expanded(
                  flex: 4,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(45.0),
                  child: new Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    padding: EdgeInsets.all(20.0),
                    color: color1,
                    child: Text('$question1'),
                  ),
                  ),
                ),
              ],
            ),

            //row3
            Row(
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(45.0),
                  child: new Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    padding: EdgeInsets.all(20.0),
                    color: ansColor1,
                    child: Text('$ans1'),
                  ),
                  ),
                ),
                
                Expanded(
                  flex: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(45.0),
                  child: new Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    padding: EdgeInsets.all(20.0),
                    color: Colors.transparent,
                    child: Text(""),
                  ),
                  ),
                ),
              ],
            ),

            // row 4
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(45.0),
                  child: new Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    padding: EdgeInsets.all(20.0),
                    color: Colors.transparent,
                    child: Text(' '),
                  ),
                  ),
                ),
                
                Expanded(
                  flex: 4,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(45.0),
                  child: new Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    padding: EdgeInsets.all(20.0),
                    color: color2,
                    child: Text('$question2'),
                  ),
                  ),
                ),
              ],
            ),

            // row 5
            Row(
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(45.0),
                  child: new Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    padding: EdgeInsets.all(20.0),
                    color: ansColor2,
                    child: Text('$ans2'),
                  ),
                  ),
                ),
                
                Expanded(
                  flex: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(45.0),
                  child: new Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    padding: EdgeInsets.all(20.0),
                    color: Colors.transparent,
                    child: Text(""),
                  ),
                  ),
                ),
              ],
            ),

          // row 6
              Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(45.0),
                  child: new Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    padding: EdgeInsets.all(20.0),
                    color: Colors.transparent,
                    child: Text(' '),
                  ),
                  ),
                ),
                
                Expanded(
                  flex: 4,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(45.0),
                  child: new Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    padding: EdgeInsets.all(20.0),
                    color: color3,
                    child: Text('$question3'),
                  ),
                  ),
                ),
              ],
            ),

          // row 7
            Row(
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(45.0),
                  child: new Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    padding: EdgeInsets.all(20.0),
                    color: ansColor3,
                    child: Text('$ans3'),
                  ),
                  ),
                ),
                
                Expanded(
                  flex: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(45.0),
                  child: new Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    padding: EdgeInsets.all(20.0),
                    color: Colors.transparent,
                    child: Text(""),
                  ),
                  ),
                ),
              ],
            ),

          ],
        ),
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