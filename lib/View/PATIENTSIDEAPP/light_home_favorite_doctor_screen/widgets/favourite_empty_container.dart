import 'package:doctorq/Widget/Patientwidgets/spacing.dart';
import 'package:doctorq/core/utils/image_constant.dart';
import 'package:doctorq/core/utils/size_utils.dart';
import 'package:flutter/material.dart';

class FavouriteEmptyContainer extends StatelessWidget {
  const FavouriteEmptyContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            ImageConstant.empty,
            width: getHorizontalSize(240),
            height: getVerticalSize(250),
          ),
          VerticalSpace(height: 34),
          Text(
            'Your favorite list is empty',
            style: TextStyle(
              fontSize: getFontSize(23),
              fontWeight: FontWeight.w600,
              fontFamily: 'Source Sans Pro',
            ),
          ),
        ],
      ),
    );
  }
}
