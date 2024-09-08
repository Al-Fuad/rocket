import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rocket/common/widgets/appbar/rocket_appbar.dart';
import 'package:rocket/common/widgets/backgrounds/background.dart';
import 'package:rocket/common/widgets/listtile/rocket_list_tile.dart';

class Exoplanet extends StatelessWidget {
  const Exoplanet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const RocketAppbar(title: "Exoplanets"),
      body: Background(
        child: ListView(
          children: const [
            SizedBox(height: 10),
            RocketListTile(title: "Exoplanet 1",),
            RocketListTile(title: "Exoplanet 2",),
            RocketListTile(title: "Exoplanet 3",),
            RocketListTile(title: "Exoplanet 4",),
            RocketListTile(title: "Exoplanet 5",),
            RocketListTile(title: "Exoplanet 6",),
            RocketListTile(title: "Exoplanet 7",),
            RocketListTile(title: "Exoplanet 8",),
          ],
        )
        ),
    );
  }
}