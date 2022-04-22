import 'package:flutter/material.dart';

class ListViewText extends StatefulWidget {
  
  const ListViewText({Key? key}) : super(key: key);

  @override
  State<ListViewText> createState() => _ListViewTextState();
}

class _ListViewTextState extends State<ListViewText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 50,
      padding: const EdgeInsets.only(right: 15),
      child: const Center(
        child:Text(
  "This is a long text",
  overflow: TextOverflow.clip,
  maxLines: 1,
  softWrap: false,
  style: TextStyle(fontSize: 14, color: Colors.grey),
),
      ),
    );
  }
}
//          
