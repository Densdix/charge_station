import 'package:flutter/material.dart';

import 'custom_tile.dart';

class InfoPanel extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          CustomTile("assets/images/icon/extra/path.png", "845 Rue Sherbrooke O, Montreal"),
          CustomTile("assets/images/icon/extra/info.png", "Public Level 2 charging at 20 Prince Arthur Ave. \$4.00/hour billed continuously while plugged in. 4 hour maximum."),
          CustomTile("assets/images/icon/extra/dollar.png", "Free restricted access"),
          CustomTile("assets/images/icon/extra/info.png", "On the corporate parking"),
          CustomTile("assets/images/icon/extra/time.png", "4 hours maximum"),
          CustomTile("assets/images/icon/extra/warn.png", "Available to a limited list of users"),
          CustomTile("assets/images/icon/extra/edit.png", "Suggest an edit"),
          Padding(
            padding: EdgeInsets.only(bottom: 30),
          )
        ],
      ),
    );
  }

}