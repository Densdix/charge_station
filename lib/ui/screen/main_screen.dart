import 'package:charge_station/ui/widget/appbar/station_appbar.dart';
import 'package:charge_station/ui/widget/fixed_bottom_panel.dart';
import 'package:charge_station/ui/widget/info_panel.dart';
import 'package:charge_station/ui/widget/status_panel.dart';
import 'package:flutter/material.dart';

class ChargeStation extends StatefulWidget {

  @override
  _ChargeStationState createState() => _ChargeStationState();
}

class _ChargeStationState extends State<ChargeStation> {

  ScrollController _scrollController;
  String title = "HB0001 - Prince Arthur";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: CustomScrollView(
              controller: _scrollController,
              slivers: <Widget>[
                StationAppbar(title),
                SliverList(
                  delegate: SliverChildListDelegate(
                    <Widget>[
                      StatusPanel(title),
                      InfoPanel(),
                    ]
                  ),
                ),
              ],
            ),
          ),
          FixedBottomPanel(),
        ],
      ),
    );
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  bool get _isBarExpanded {
    return _scrollController.hasClients && (_scrollController.offset > 100);
  }

  void _scrollListener(){
    debugPrint(_scrollController.offset.toString());
    if(_isBarExpanded){
      setState(() {
        title = "Expanded";
      });
    }
    else
      {
        title = "Not Expanded";
      }
  }


}
