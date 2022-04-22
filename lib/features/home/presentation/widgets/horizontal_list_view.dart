import 'package:flutter/material.dart';

import 'list_view_text.dart';

class HorizontalListView extends StatefulWidget {
  const HorizontalListView({Key? key}) : super(key: key);

  @override
  State<HorizontalListView> createState() => _HorizontalListViewState();
}

class _HorizontalListViewState extends State<HorizontalListView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 19,
      width: MediaQuery.of(context).size.width * 0.9,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          ListViewText(),
          ListViewText(),
          ListViewText(),
          ListViewText(),
          ListViewText(),
          ListViewText(),
        ],
      ),
    );
  }
}
