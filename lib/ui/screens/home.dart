import 'package:flutter/material.dart';
import 'package:qit/core/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.homeBgColor,
      appBar: AppBar(
        backgroundColor: AppConstants.homeBgColor,
        elevation: 0,
        leading: IconButton(
          icon: Image.asset(AppConstants.drawerFromAssets),
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: IconButton(
              icon: Image.asset(AppConstants.bellFromAssets),
              onPressed: () {
                // do something
              },
            ),
          )
        ],
      ),
    );
  }
}
