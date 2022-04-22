import 'package:flutter/material.dart';
import 'package:qit/core/constants.dart';

class RatingContainer extends StatelessWidget {
   final double rate;
  const RatingContainer({
    Key? key,
    required this.rate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Container(
        color: AppConstants.homeBgColor,
        
        height: 21,width: 39,
        child: Center(
          child: RichText(
            // ignore: prefer_const_constructors
            text: TextSpan(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                TextSpan(
                    text: rate.toString()+"  ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    )),
                WidgetSpan(
                  baseline: TextBaseline.alphabetic,
                  alignment: PlaceholderAlignment.middle,
                  // ignore: prefer_const_constructors
                  child: Image.asset(
                    AppConstants.starFromAssets,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
