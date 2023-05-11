import 'package:flutter/material.dart';
import '../../core/utils/color_constant.dart';

class BkBtn extends StatelessWidget {
  const BkBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.canPop(context) ? Navigator.pop(context) : SizedBox();
      },
      child: Icon(
        Icons.arrow_back_rounded,
        color: ColorConstant.blueA400,
      ),
    );
  }
}
