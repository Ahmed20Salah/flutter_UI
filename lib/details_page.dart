import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/house.jpg'), fit: BoxFit.cover)),
          ),
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.4),
            child: Material(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(100.0)),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: <Widget>[
                    Text('test')
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
