import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qit/core/constants.dart';
import 'package:badges/badges.dart';
import 'package:qit/features/home/presentation/widgets/horizontal_list_view.dart';
import 'package:qit/features/home/presentation/widgets/item_card.dart';

import '../../domain/entities/categories_response_model.dart';
import '../bloc/category_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLoading = true;
  CategoriesResponseModel items =
      CategoriesResponseModel(categoryItemModel: []);
  @override
  void initState() {
    super.initState();
  }

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
            padding: const EdgeInsets.only(top: 8.0),
            child: IconButton(
              icon: Badge(
                badgeContent: const Text(
                  '3',
                  style: TextStyle(fontSize: 12),
                ),
                badgeColor: Colors.white,
                child: Image.asset(
                  AppConstants.bellFromAssets,
                ),
              ),
              onPressed: () {
                // do something
              },
            ),
          )
        ],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            const HorizontalListView(),
            const SizedBox(
              height: 20,
            ),
            BlocListener<CategoryBloc, CategoryState>(
              listener: (context, state) {
                if (state is Loadingg) {
                  setState(() {
                    isLoading = true;
                  });
                } else if (state is Loadedd) {
                  setState(() {
                    isLoading = false;
                  });
                  items = state.response;
                } else if (state is Errorr) {
                  setState(() {
                    isLoading = false;
                  });
                }
              },
              child: isLoading == false
                  ? Container(
                      height: MediaQuery.of(context).size.height * 0.8,
                      width: MediaQuery.of(context).size.width,
                      child: GridView.count(
                        childAspectRatio: 9 / 14,
                        crossAxisCount: 2,
                        children: List.generate(items.categoryItemModel.length, (index) {
                          return Center(
                            child: ItemCard(
                              image: items.categoryItemModel[index].image,
                              price: items.categoryItemModel[index].price,
                              rate: items.categoryItemModel[index].rating?.rate,
                              title: items.categoryItemModel[index].title,
                            ),
                          );
                        }),
                      ),
                    )
                  : Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.32,
                      ),
                      child: const Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
