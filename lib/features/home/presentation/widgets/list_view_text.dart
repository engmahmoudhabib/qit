import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qit/core/providers.dart';
import '../bloc/category_bloc.dart';

class ListViewText extends StatefulWidget {
  final String text;
 

  ListViewText({
    Key? key,
    required this.text,
 
  }) : super(key: key);

  @override
  State<ListViewText> createState() => _ListViewTextState();
}

class _ListViewTextState extends State<ListViewText> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        return Container(
          // width: 50,
          padding: const EdgeInsets.only(right: 15),
          child: InkWell(
            onTap: () {
              BlocProvider.of<CategoryBloc>(context).add(
                GetCategoryResponseEvent(
                  widget.text,
                ),
              );
              ref.watch(selectedCategory.state).state = widget.text;
            },
            child: Center(
              child: Text(
                widget.text,
                overflow: TextOverflow.clip,
                maxLines: 1,
                softWrap: false,
                style: TextStyle(
                  fontSize: 14,
                  color:
                     ref.watch(selectedCategory.state).state != widget.text ? Colors.grey : Colors.white,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
//          
