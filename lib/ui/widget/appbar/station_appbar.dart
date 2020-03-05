import 'package:flutter/material.dart';

class StationAppbar extends StatefulWidget {

  StationAppbar(this.title, this.scrollController);

  String title;
  ScrollController scrollController;

  @override
  _StationAppbarState createState() => _StationAppbarState();

}

class _StationAppbarState extends State<StationAppbar>{

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        title: mOffset > 180 ? Text(widget.title) : Text(''),
        leading: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black.withOpacity(updateOpacity()),
          ),
          child: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
            onPressed: () {},
          ),
        ),
        actions: <Widget>[
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black.withOpacity(updateOpacity()),
            ),
            child: IconButton(
              icon: mOffset > 180
                  ? Icon(Icons.favorite)
                  : Icon(Icons.favorite_border),
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




  @override
  void initState() {
    widget.scrollController.addListener(_scrollListener);
    super.initState();
  }

  bool get _isBarExpanded {
    return widget.scrollController.hasClients && (widget.scrollController.offset > 10);
  }

  void _scrollListener(){
    debugPrint(widget.scrollController.offset.toString());
    if(_isBarExpanded){
      setState(() {
        //widget.title = "Expanded";
      });
    }
    else
      setState(() {
        //widget.title = "Not Expanded";
      });
  }

  double updateOpacity(){
    double outputOpacity = (0.5 - (mOffset * 0.003));

    if(outputOpacity <= 0.99 && outputOpacity >= 0.01){
      //debugPrint("outputOpacity1 "+ outputOpacity.toString());
      return outputOpacity;

    }
    else{
      outputOpacity = 0.0;
      //("outputOpacity2 "+ outputOpacity.toString());
      return outputOpacity;
    }
  }

  double get mOffset => widget.scrollController.offset;


}