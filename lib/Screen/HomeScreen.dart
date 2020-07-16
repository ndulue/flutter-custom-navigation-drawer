import 'package:flutter/material.dart';
import 'package:flutternavigationdrawer/Screen/DetailScreen.dart';
import 'package:flutternavigationdrawer/config.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  double xOffset=0;
  double yOffset=0;
  double scaleFactor=0;
  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)..scale(scaleFactor),
      duration: Duration(
        milliseconds: 250
      ),
      color: Colors.grey[200],
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 50,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                 isDrawerOpen ? IconButton(
                     icon: Icon(Icons.arrow_back_ios),
                     onPressed: (){
                       setState(() {
                         xOffset = 0;
                         yOffset = 0;
                         scaleFactor = 1;
                         isDrawerOpen = false;
                       });
                     }
                 )

                 : IconButton(icon: Icon(Icons.menu), onPressed: (){
                    setState(() {
                      xOffset = 230;
                      yOffset = 150;
                      scaleFactor = 0.6;
                      isDrawerOpen = true;
                    });
                  }),
                  Column(
                    children: <Widget>[
                      Text('Location'),
                      Row(
                        children: <Widget>[
                          Icon(Icons.location_on, color: primaryGreen,),
                          Text('Lagos')
                        ],
                      )
                    ],
                  ),
                  CircleAvatar()
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.search),
                    Text('Search pet to adopt'),
                    Icon(Icons.settings)
                  ],
              ),
            ),
            Container(
              height: 20,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index){
                    return Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: shadowList,
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Image.asset(categories[index]['iconPath'],
                              height: 50,
                              width: 50,
                              color: Colors.grey[700],
                            ),
                          ),
                          Text(categories[index]['name'])
                        ],
                      ),
                    );
                  }
              ),
            ),

            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen()));
              },
              child: Container(
                height: 240,
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: Stack(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.blueGrey[300],
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: shadowList,
                              ),
                              margin: EdgeInsets.only(top: 40),
                            ),
                            Align(
                              child: Image.asset('Assets/cat.png'),
                            )
                          ],
                        )
                    ),
                    Expanded(
                        child: Container(
                          margin: EdgeInsets.only(top: 60, bottom: 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: shadowList,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              )
                          ),
                        )
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 240,
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Stack(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.orange[200],
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: shadowList,
                            ),
                            margin: EdgeInsets.only(top: 40),
                          ),
                          Align(
                            child: Image.asset('Assets/cat2.png'),
                          )
                        ],
                      )
                  ),
                  Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 60, bottom: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: shadowList,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            )
                        ),
                      )
                  )
                ],
              ),
            )



          ],
        ),
      ),
    );
  }
}
