import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned.fill(
              child: Column(
                children: <Widget>[
                  Expanded(
                      child: Container(
                        color: Colors.blueGrey[300],
                      )
                  ),
                  Expanded(
                      child: Container(
                        color: Colors.white,
                      )
                  ),
                ],
              )
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: (){
                        Navigator.pop(context);
                      }
                  ),
                  IconButton(
                      icon: Icon(Icons.share),
                      onPressed: (){
                      }
                  )
                ],
              ),

            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Align(
              alignment: Alignment.topCenter,
              child: Image.asset('Asset/cat.png'),
            ),
          ),
          Align(
            alignment: Alignment.center,

          )
        ],
      ),
    );
  }
}
