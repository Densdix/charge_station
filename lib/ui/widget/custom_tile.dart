import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget{
  String image;
  String title;


  CustomTile(this.image, this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30, left: 25),
      child: Row(
        children: <Widget>[
          Container(
            child: Image.asset(image),
            width: 25,
            height: 25,
          ),
          Container(
            padding: EdgeInsets.only(left: 30),
            width: 310,
            child: Text(title),
          )
        ],
      ),
    );
  }
}