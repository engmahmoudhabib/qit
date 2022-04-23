import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qit/core/providers.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        return BlocListener<CategoriesBloc, CategoriesState>(
          listener: (context, state) async {
             final prefs = await SharedPreferences.getInstance();
            if (state is Loading) {
              setState(() {
                isLoading = true;
              });
            } else if (state is Loaded) {
              setState(() {
                categories = state.response;
                isLoading = false;
                ref.watch(selectedCategory.state).state = categories[0];
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
           
            CoolAlert.show(
              context: context,
              type: CoolAlertType.error,
              text: prefs.getString('token'),
            );
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
      },
    );
  }
}
