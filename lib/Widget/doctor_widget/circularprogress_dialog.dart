import 'package:doctorq/core/app_export.dart';
import 'package:doctorq/core/utils/size_utils.dart';
import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';

//show circular progress dialog
void showCircularProgress(BuildContext context) {
  showDialog(
    barrierColor: Colors.black.withOpacity(0.5),
    barrierDismissible: true,
    context: context,
    builder: (context) {
      // Future.delayed(const Duration(milliseconds: 600), () {
      //   Navigator.of(context).pop(true);
      //   Navigator.of(context).pushAndRemoveUntil(
      //       MaterialPageRoute(builder: (context) => const SignInScreen()),
      //       (Route<dynamic> route) => false);
      // });
      return Dialog(
          backgroundColor: Colors.transparent,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          elevation: 0.0,
          child: Center(
            child: Container(
              width: getHorizontalSize(124),
              height: getVerticalSize(124),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ColorConstant.whiteA700),
              child: Center(
                  child: CircularProgressIndicator(
                color: ColorConstant.blueA400,
                backgroundColor: ColorConstant.blueA400.withOpacity(.3),
              )),
            ),
          ));
    },
  );
}

class CustomCircularProgressDialog extends StatelessWidget {
  const CustomCircularProgressDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
        backgroundColor: Colors.transparent,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15.0),
          ),
        ),
        elevation: 0.0,
        child: Center(
          child: Container(
            width: getHorizontalSize(124),
            height: getVerticalSize(124),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: ColorConstant.whiteA700),
            child: Center(
                child: CircularProgressIndicator(
              color: ColorConstant.blueA400,
              backgroundColor: ColorConstant.blueA400.withOpacity(.3),
            )),
          ),
        ));
  }
}
