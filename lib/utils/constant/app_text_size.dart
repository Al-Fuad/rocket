import 'package:flutter/material.dart';
import 'package:rocket/utils/helper/helper_functions.dart';

class AppTextSize {
  static double body(BuildContext context) =>
      HelperFunctions.getScreenWidth(context) * 0.03;
  static double title(BuildContext context) =>
      HelperFunctions.getScreenWidth(context) * 0.05;
  static double subtitle(BuildContext context) =>
      HelperFunctions.getScreenWidth(context) * 0.04;
}
