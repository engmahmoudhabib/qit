import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/categories_bloc.dart';
import '../bloc/category_bloc.dart';
import 'list_view_text.dart';

class HorizontalListView extends StatefulWidget {
  const HorizontalListView({Key? key}) : super(key: key);

  @override
  State<HorizontalListView> createState() => _HorizontalListViewState();
}

class _HorizontalListViewState extends State<HorizontalListView> {
  List<dynamic> categories = [];
  bool isLoading = false;
  @override
  void initState() {
    BlocProvider.of<CategoriesBloc>(context).add(
      const GetCategoriesResponseEvent(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CategoriesBloc, CategoriesState>(
      listener: (context, state) {
        if (state is Loading) {
          setState(() {
            isLoading = true;
          });
        } else if (state is Loaded) {
          setState(() {
            categories = state.response;
            isLoading = false;
            BlocProvider.of<CategoryBloc>(context).add(
              GetCategoryResponseEvent(
                categories[0],
              ),
            );
          });
        } else if (state is Error) {
          setState(() {
            isLoading = false;
          });
        }
      },
      child: Container(
        height: 35,
        width: MediaQuery.of(context).size.width * 0.9,
        child: isLoading == false
            ? ListView(
                scrollDirection: Axis.horizontal,
                children: categories
                    .map(
                      (e) => ListViewText(
                        text: e,
                      ),
                    )
                    .toList(),
              )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
