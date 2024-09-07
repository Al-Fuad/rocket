import 'package:flutter/material.dart';

class HelperFunctions {
  // Get screen width
  static double getScreenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;

  // Get screen height
  static double getScreenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;
  }
