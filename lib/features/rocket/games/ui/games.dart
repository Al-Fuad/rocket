// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import 'package:rocket/common/widgets/appbar/rocket_appbar.dart';
import 'package:rocket/common/widgets/backgrounds/background.dart';
import 'package:rocket/common/widgets/listtile/rocket_list_tile.dart';
import 'package:rocket/utils/constant/rocket_color.dart';

class Games extends StatelessWidget {
  const Games({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const RocketAppbar(title: "Games"),
      body: Background(
        child: ListView(children: [
          const SizedBox(height: 10),
          RocketListTile(
            title: "Game 1",
            onPressed: () {
              SystemChrome.setPreferredOrientations([
                // DeviceOrientation.portraitUp,
                DeviceOrientation.landscapeRight,
                DeviceOrientation.landscapeLeft
              ]);
            },
          ),
          RocketListTile(
            title: "Game 2",
            onPressed: () {
              SystemChrome.setPreferredOrientations([
                DeviceOrientation.portraitUp,
                // DeviceOrientation.landscapeRight,
                // DeviceOrientation.landscapeLeft
              ]);
            },
          ),
        ]),
      ),
    );
  }
}
