import 'package:flutter/material.dart';

Color fromHex(String hexString) {
  final buffer = StringBuffer();
  if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
  buffer.write(hexString.replaceFirst('#', ''));
  return Color(int.parse(buffer.toString(), radix: 16));
}

const Color blackColor = Color(0xFF000000);
const Color whiteColor = Color(0xFFFFFFFF);
const Color greenColor = Color(0xFF439B49);
const Color darkGreyColor = Color(0xFF4C4C4C);
const Color greyColor = Color(0xFFB0AFAF);
const Color redColor = Color(0xFFFF6767);
const Color lightGreyColor = Color(0xFFF5F0F0);
const Color yellowColor = Color(0xFFFFDF1D);
const Color goldColor = Color(0xFFFFCD19);
const Color blueColor = Color(0xFF46BBFF);
const Color lightBlueColor = Color(0xff46BBFF);
Color shadowColor = fromHex('#145a6cea');
Color hintColor = fromHex('#DADEE3');
Color backgroundColor = const Color.fromRGBO(41, 114, 254, 0.1);
Color lightBlack = fromHex("#2C3A4B");

class ColorConstant {
  static Color pink300E5 = fromHex('#e5ff5d7b');
  static Color lightLine = fromHex('#EBEEF2');
  static Color darkBottomSheet = fromHex('#161B20');
  static Color lightGrayText = fromHex('#545D69');
  static Color hintColor = fromHex('#DADEE3');
  static Color darkLine = fromHex('#394452');

  static Color bluegray50 = fromHex('#eaeef2');

  static Color blueA400 = const Color(0xff38B6FF);
  static Color bluedark = const Color(0xff2972FE);

  static Color darkBg = fromHex('#0D0D0D');

  static Color darkTextField = fromHex('#141414');

  static Color darkContainer = fromHex('#252525');

  static Color gray90099 = fromHex('#9909101d');

  static Color blueA100 = fromHex('#93b8fe');

  static Color bluegray800A2 = fromHex('#a22b394b');

  static Color green600 = fromHex('#23a656');

  static Color black900 = fromHex('#09051c');

  static Color gray900A2 = fromHex('#a209101d');

  static Color redA400 = fromHex('#ff1843');

  static Color redA700 = fromHex('#da1414');

  static Color gray600 = fromHex('#6c7580');

  static Color amber60000 = fromHex('#00ffb700');

  static Color gray500 = fromHex('#9097a0');

  static Color indigoA20014 = fromHex('#145a6cea');

  static Color blueA40019 = fromHex('#192972fe');

  static Color redA400E5 = fromHex('#e5ff1843');

  static Color amber600 = fromHex('#ffb800');

  static Color whiteA700A2 = fromHex('#a2ffffff');

  static Color gray900 = fromHex('#09101d');

  static Color amber200 = fromHex('#ffda7b');

  static Color redA700A2 = fromHex('#a2da1414');

  static Color gray300 = fromHex('#d9dde2');

  static Color blueA400Cc = fromHex('#cc2972fe');

  static Color redA40019 = fromHex('#19ff1843');

  static Color gray100 = fromHex('#f4f6f9');

  static Color bluegray801 = fromHex('#394451');

  static Color bluegray800 = fromHex('#2b394b');

  static Color bluegray700 = fromHex('#535d68');

  static Color bluegray400 = fromHex('#858b94');

  static Color bluegray300 = fromHex('#a4abb3');

  // static Color blue300 = fromHex('#6399ff');
  static Color blue300 = const Color(0xff85D0FF);

  static Color indigo601 = fromHex('#2e5aac');

  static Color whiteA700 = fromHex('#ffffff');

  static Color indigo600 = fromHex('#3c5a9a');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
