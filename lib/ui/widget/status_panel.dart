import 'package:flutter/material.dart';

class StatusPanel extends StatelessWidget{

  String title = "";

  StatusPanel(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8))
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 19),
            child: Row(
              children: <Widget>[
                Text(title, style: TextStyle(fontSize: 20),),
                ClipRRect(
                  borderRadius: BorderRadius.circular(11),
                  child: Container(
                    width: 100,
                    height: 22,
                    color: Color(0xFFB0BEC5),
                    child: MaterialButton(
                      child: Text("Available", style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, top: 3),
            child: Row(
              children: <Widget>[
                Text("CP4300", style: TextStyle(color: Color(0xFF9B9B9B), fontSize: 15, fontWeight: FontWeight.normal),),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 67, top: 27.5, right: 67),
            child: Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(bottom: 16.5),
                      child:
                      Image.asset("assets/images/icon/status/dollar.png"),
                      //SvgPicture.asset("assets/images/icon/status-svg/dollar.png")
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 2),
                      child: Text("\$1.00", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                    ),
                    Text("price", style: TextStyle(fontSize: 10, color: Colors.black.withOpacity(0.87)),),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(bottom: 16.5),
                      child: Image.asset("assets/images/icon/status/charge.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 2),
                      child: Text("7.2 kW", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                    ),
                    Text("max power", style: TextStyle(fontSize: 10),),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(bottom: 16.5),
                      child: Image.asset("assets/images/icon/status/plug.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 2),
                      child: Text("Level 3", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                    ),
                    Text("CSS + CHAdeMO", style: TextStyle(fontSize: 10),),
                  ],
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 17),
            child: Divider(
              color: Colors.black.withOpacity(0.12),
            ),
          )
        ],
      ),
    );
  }
}