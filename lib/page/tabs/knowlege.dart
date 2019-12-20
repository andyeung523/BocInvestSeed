import 'package:flutter/material.dart';
// import 'package:oauth2/oauth2.dart' as oauth2;


class Knowledge extends StatefulWidget {
  @override
  _KnowlegeState createState() => _KnowlegeState();
}

class _KnowlegeState extends State<Knowledge> {


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
 
          child:Column(
            
            //padding: EdgeInsets.only(top: 12),
            children :<Widget>[
              
              Row(
              
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: ClipRRect(
                    // borderRadius: BorderRadius.circular(50.0),
                  child: new Container(

                    // child: Center(child: Text('Chapter 1', style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),)),
                     child: 
                     FittedBox(
                      child: Image.asset('assets/book.JPG'),
                      fit: BoxFit.fill,
                    ),

                    margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    height: 250.0,
                    color: Colors.green,
                  ),
                  ),
                ),

              ]
            ),
            Row(
              
              children: <Widget>[
                Expanded(
                  
                  flex: 2,
                  child: ClipRRect(
                  child: new Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    height: 10.0,
                    color: Colors.red,
                  ),
                  ),
                ),
                
                Expanded(
                  
                  flex: 4,
                  child: ClipRRect(
                  child: new Container(
                    margin: EdgeInsets.fromLTRB(0,0, 10, 0),
                    height: 10.0,
                    color: Colors.grey[500],
                    alignment: Alignment.centerLeft,
                  ),
                  ),
                ),
              ],
            ),

            Row(
              
              children: <Widget>[
                Expanded(
                  
                  
                  child: ClipRRect(
                  child: new Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    height: 100.0,
                    color: Colors.grey,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Chapter 1 - Introduction to Investment                     34%", style: TextStyle(fontSize: 30, color: Colors.white),),
                    ),
                  ),
                  ),
                ),
                
                
              ],
            ),


            Row(
              
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: ClipRRect(
                    // borderRadius: BorderRadius.circular(50.0),
                  child: new Container(

                    child:// Center(child: Text('Chapter 2', style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),)),
                    FittedBox(
                      child: Image.asset('assets/rocket.JPG'),
                      fit: BoxFit.fill,
                    ),
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    height: 250.0,
                    color: Colors.red[200],
                  ),
                  ),
                ),

              ]
            ),
            Row(
              
              children: <Widget>[
                
                
                Expanded(
                  
                  flex: 4,
                  child: ClipRRect(
                  child: new Container(
                    margin: EdgeInsets.fromLTRB(10,0, 10, 0),
                    height: 10.0,
                    color: Colors.grey[500],
                    alignment: Alignment.centerLeft,
                  ),
                  ),
                ),
              ],
            ),
            Row(
              
              children: <Widget>[
                Expanded(
                  
                  flex: 2,
                  child: ClipRRect(
                  child: new Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    height: 100.0,
                    color: Colors.orange[300],
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Chapter 2 - Advanced Investment                       0%", style: TextStyle(fontSize: 30, color: Colors.white),),
                    ),

                  ),
                  ),
                ),
                
                
              ],
            ),

Row(
              
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: ClipRRect(
                    // borderRadius: BorderRadius.circular(50.0),
                  child: new Container(

                    child:// Center(child: Text('Chapter 2', style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),)),
                    FittedBox(
                      child: Image.asset('assets/bg_color.jpg'),
                      fit: BoxFit.fill,
                    ),
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    height: 250.0,
                    color: Colors.red[200],
                  ),
                  ),
                ),

              ]
            ),
            Row(
              
              children: <Widget>[
                
                
                Expanded(
                  
                  flex: 4,
                  child: ClipRRect(
                  child: new Container(
                    margin: EdgeInsets.fromLTRB(10,0, 10, 0),
                    height: 10.0,
                    color: Colors.grey[500],
                    alignment: Alignment.centerLeft,
                  ),
                  ),
                ),
              ],
            ),
            Row(
              
              children: <Widget>[
                Expanded(
                  
                  flex: 2,
                  child: ClipRRect(
                  child: new Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    height: 100.0,
                    color: Colors.brown[200],
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Chapter 3 - Coming Soon     \n                                              0%", style: TextStyle(fontSize: 30, color: Colors.white),),
                    ),

                  ),
                  ),
                ),
                
                
              ],
            ),

            ]
          ),

      
    );
  }
}
  
      
            

  


    
    
//     return Container(
//       child: SafeArea(
//         child: Scaffold(
//           backgroundColor: Colors.white,
//           body: SingleChildScrollView(
//             child: Column(
//               children: <Widget>[
//                 Center(
//                   child: Container(
//                     margin: EdgeInsets.all(20),
//                     padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
//                     child: Column(  
//                       children: <Widget>[
//                         Row(
//                           children: <Widget>[
//                             Expanded(
//                               child: Container(
//                                 height: 150,
//                                 child: Text("Tips",style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 3.5)),
//                                 //color: Colors.black,
//                               ),
//                             ),
//                             Expanded(
//                               child: Container(
//                                 height: 200,
//                                 child: CircleAvatar(
//                                           backgroundImage: AssetImage('assets/rocket.JPG'),
//                                         )
//                                 //color: Colors.black,
//                               ),
//                             ),
//                           ],
//                         ),
//                         Row(
//                           children: <Widget>[
//                             Expanded(
//                               child: Container(
//                                 height: 100,
//                                 child: Text("You\'re on mpdule 1 of 10",style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 1)),
//                                 //color: Colors.black,
//                               ),
//                             )
//                           ],
//                         )
//                       ],
//                     ),
//                     //color: colours,
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }