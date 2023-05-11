import 'package:doctorq/core/utils/size_utils.dart';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

List<BoxShadow> customBoxShadow = [
  BoxShadow(
    color: ColorConstant.indigoA20014,
    spreadRadius: getHorizontalSize(
      0.00,
    ),
    blurRadius: getHorizontalSize(
      10.00,
    ),
    offset: Offset(
      0,
      4,
    ),
  ),
];

List<BoxShadow> customDarkBoxShadow = [
  BoxShadow(
    color: Colors.transparent,
    spreadRadius: getHorizontalSize(
      2.00,
    ),
    blurRadius: getHorizontalSize(
      2.00,
    ),
    offset: Offset(
      0,
      0,
    ),
  ),
];
