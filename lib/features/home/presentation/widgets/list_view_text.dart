import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/category_bloc.dart';

class ListViewText extends StatefulWidget {
  final String text;

  const ListViewText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  State<ListViewText> createState() => _ListViewTextState();
}

class _ListViewTextState extends State<ListViewText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 50,
      padding: const EdgeInsets.only(right: 15),
      child: InkWell(
        onTap: () => BlocProvider.of<CategoryBloc>(context).add(
          GetCategoryResponseEvent(
            widget.text,
          ),
        ),
        child: Center(
          child: Text(
            widget.text,
            overflow: TextOverflow.clip,
            maxLines: 1,
            softWrap: false,
            style: const TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
//          
