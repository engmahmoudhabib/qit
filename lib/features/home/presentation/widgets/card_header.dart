import 'package:flutter/material.dart';
import 'package:qit/core/constants.dart';

import 'rating_container.dart';

class CardHeader extends StatelessWidget {
   final double rate;
  const CardHeader({
    Key? key,
    required this.rate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppConstants.cardTopColor,
      padding: const EdgeInsets.only(
        top: 10,
        right: 5,
        left: 5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
          RatingContainer(rate: rate),
        const  Icon(
            Icons.favorite_outline,
            size: 20,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
