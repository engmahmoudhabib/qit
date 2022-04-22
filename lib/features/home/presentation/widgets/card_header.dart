import 'package:flutter/material.dart';
import 'package:qit/core/constants.dart';

import 'rating_container.dart';

class CardHeader extends StatelessWidget {
  const CardHeader({
    Key? key,
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
        children: const [
          RatingContainer(),
          Icon(
            Icons.favorite_outline,
            size: 20,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
