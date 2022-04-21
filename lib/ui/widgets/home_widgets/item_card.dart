import 'package:flutter/material.dart';
import 'package:qit/core/constants.dart';

class ItemCard extends StatefulWidget {
  const ItemCard({Key? key}) : super(key: key);

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      width: MediaQuery.of(context).size.width * 0.5,
      child: Card(
        semanticContainer: true,
        color: AppConstants.cardBottomColor,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          children: [
            Container(
              height: (2 / 3.7) * MediaQuery.of(context).size.height * 0.35,
              width: MediaQuery.of(context).size.width * 0.5,
              color: AppConstants.cardTopColor,
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * 0.03,
                      top: MediaQuery.of(context).size.width * 0.03),
                  // ignore: prefer_const_constructors
                  child:  Container(
                   height: MediaQuery.of(context).size.height * 0.04,
      width: MediaQuery.of(context).size.width * 0.35,
                    child: Text(
                      'PULSE 3D Wireless Headset bbbbbbbbbbbbbbbbbbbbbbbbbbbbfffbbbbbbbbbbb',
                      maxLines: 2,
                      overflow: TextOverflow.clip,
                      softWrap: true,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                // ignore: prefer_const_constructors
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.03,
                      top: MediaQuery.of(context).size.width * 0.03),
                  // ignore: prefer_const_constructors
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: const Text.rich(
                      TextSpan(
                        text: "\$ 8988.000" + "   ",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: '\$ 900',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                                decoration: TextDecoration.lineThrough,
                              )),
                          // can add more TextSpans here...
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        elevation: 5,
        margin: EdgeInsets.all(10),
      ),
    );
  }
}
