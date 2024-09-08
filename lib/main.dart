import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rocket/main_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const MainApp());
  });
  // runApp(const MainApp());
}
