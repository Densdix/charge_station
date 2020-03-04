import 'package:flutter/material.dart';

class FixedBottomPanel extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 48,
          width: double.infinity,
          color: Color(0xFFE10029),
          child: Padding(
            padding: const EdgeInsets.only(top: 16, left: 16, bottom: 9),
            child: Text("Station under maintenance", style: TextStyle(fontSize: 14, color: Colors.white, fontStyle: FontStyle.normal),),
          ),
        ),
        Container(
          height: 69,
          width: double.infinity,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 14),
                  child: FlatButton(
                    child: Text("RESERVE", style: TextStyle(color: Colors.black.withOpacity(0.3)),),
                    onPressed: () {},
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Container(
                    height: 36,
                    color: Color(0xFF8BC34A),
                    child: MaterialButton(
                      child: Text("START CHARGE", style: TextStyle(color: Colors.white),),
                      onPressed: () {},
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

}