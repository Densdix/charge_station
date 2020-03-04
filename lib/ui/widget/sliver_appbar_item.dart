import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliverAppbarItem extends StatefulWidget{

  @override
  _SliverAppbarItemState createState() => _SliverAppbarItemState();

}

class _SliverAppbarItemState extends State<SliverAppbarItem>{
  double _itemOpacity = 0.01;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: CircleBorder(),
      color: Colors.green.withOpacity(_itemOpacity),
      child: Icon(Icons.arrow_back),
      onPressed: () {
      },
    );
  }

}