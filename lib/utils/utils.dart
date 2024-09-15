import 'dart:ui';

import 'package:intl/intl.dart';

class Utils {
  // color
  static Color primaryColor = const Color(0xFFF8C20A);
  static Color selectedColor = const Color(0xFFDAB958);
  static Color blackColor = const Color(0xFF212528);
  static Color tealColor = const Color(0xFF2D7794);

  // grey color
  static Color greyColor = const Color(0xFFE5E6E1);
  static Color darkGreyColor = const Color(0xFFB7B7B7);
  static Color greyDECColor = const Color(0xFFEBEDEC);
  static Color grey8F7Color = const Color(0xFFF6F8F7);
  static Color grey3D2Color = const Color(0xFFD1D3D2);

  // black color
  static Color black133Color = const Color(0xFF303133);
  static Color black73EColor = const Color(0xFF34373E);
  static Color black202Color = const Color(0xFF020202);
  static Color black338Color = const Color(0xFF303338);

  static String convertToIdr(dynamic number, int decimalDigit) {
    NumberFormat currencyFormatter = NumberFormat.currency(
      locale: 'id',
      symbol: 'Rp ',
      decimalDigits: decimalDigit,
    );
    return currencyFormatter.format(number);
  }
}