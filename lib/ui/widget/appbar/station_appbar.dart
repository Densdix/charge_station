import 'package:charge_station/ui/widget/sliver_appbar_item.dart';
import 'package:flutter/material.dart';

class StationAppbar extends StatelessWidget{

  String title;

  StationAppbar(this.title);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        title: Text(title),
        leading: SliverAppbarItem(),
        actions: <Widget>[
          Container(
            child: IconButton(
              padding: EdgeInsets.only(right: 8),
              icon: Icon(Icons.favorite_border),
              onPressed: (){},
            ),
          )
        ],
        expandedHeight: 250,
        pinned: true,
        flexibleSpace: FlexibleSpaceBar(
          background: Container(
            child: Image.asset(
              "assets/images/station/prince-arthur.png",
              fit: BoxFit.fill,
            ),
          ),
        )
    );
  }
}