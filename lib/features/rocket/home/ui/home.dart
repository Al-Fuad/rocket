import 'package:flutter/material.dart';
import 'package:rocket/common/widgets/appbar/rocket_appbar.dart';
import 'package:rocket/common/widgets/backgrounds/background.dart';
import 'package:rocket/utils/constant/app_text_size.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const RocketAppbar(title: "Rocket",),
      body: Background(child: Center(child: Text("hello", style: TextStyle(fontSize: AppTextSize.body(context)),),)),
    );
  }
}