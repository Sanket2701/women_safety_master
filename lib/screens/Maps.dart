import 'package:flutter/material.dart';
import 'package:women_safety/utilities/constants.dart';
import 'package:women_safety/widgets/CustomBottomBar.dart';
import 'package:women_safety/widgets/drawer.dart';

class MapsScreen extends StatefulWidget {
  @override
  _MapsScreenState createState() => _MapsScreenState();
}

class _MapsScreenState extends State<MapsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          "W-Safety",
          style: kTitleStyle,
        ),
        elevation: 0.0,
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: Icon(
                Icons.menu,
                color: white,
              ),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            ),
          ),
        ],
      ),
      endDrawer: CustomDrawer(),
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}
