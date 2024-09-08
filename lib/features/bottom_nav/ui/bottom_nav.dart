import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rocket/common/widgets/backgrounds/background.dart';
import 'package:rocket/features/bottom_nav/bloc/bottom_nav_bloc.dart';
import 'package:rocket/features/rocket/chatbot/ui/chatbot.dart';
import 'package:rocket/features/rocket/exoplanet/ui/exoplanet.dart';
import 'package:rocket/features/rocket/games/ui/games.dart';
import 'package:rocket/features/rocket/home/ui/home.dart';
import 'package:rocket/features/personalization/profile/ui/profile.dart';
import 'package:rocket/utils/constant/rocket_color.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    double selectedIconHeight = 70;
    double unselectedIconHeight = 50;

    List<Widget> bottomNavScreen = const [
      Home(),
      Exoplanet(),
      Games(),
      Chatbot(),
      Profile(),
    ];
    return BlocConsumer<BottomNavBloc, BottomNavState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: bottomNavScreen.elementAt(state.tabIndex),
          bottomNavigationBar: Container(
            height: 110,
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: RocketColor.primary,
                  width: 1,
                ),
              ),
            ),
            child: Background(
              opacity: 0.5,
              child: BottomNavigationBar(
                backgroundColor: Colors.black.withOpacity(0.1),
                items: [
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      child: Image.asset(
                        "assets/icons/rocketIcon.png",
                        height: (state.tabIndex == 0) ? selectedIconHeight + 20 : unselectedIconHeight + 20,
                      ),
                    ),
                    label: 'Rocket',
                  ),
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      child: Image.asset(
                        "assets/icons/planet.png",
                        height: (state.tabIndex == 1) ? selectedIconHeight - 10 : unselectedIconHeight - 10,
                        ),
                    ),
                    label: 'Exoplanet',
                  ),
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      child: Image.asset(
                        "assets/icons/game.png",
                        height: (state.tabIndex == 2) ? selectedIconHeight : unselectedIconHeight,
                        ),
                    ),
                    label: 'Games',
                  ),
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      child: Image.asset(
                        "assets/icons/chatbot.png",
                        height: (state.tabIndex == 3) ? selectedIconHeight : unselectedIconHeight,
                        ),
                    ),
                    label: 'Chatbot',
                  ),
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      child: Image.asset(
                        "assets/icons/user.png",
                        height: (state.tabIndex == 4) ? selectedIconHeight - 10 : unselectedIconHeight - 10,
                        ),
                    ),
                    label: 'User',
                  ),
                ],
                selectedFontSize: 0,
                type: BottomNavigationBarType.fixed,
                selectedIconTheme: const IconThemeData(size: 30),
                unselectedIconTheme: const IconThemeData(size: 20),
                currentIndex: state.tabIndex,
                onTap: (index) {
                  context
                      .read<BottomNavBloc>()
                      .add(BottomNavTabChanged(tabIndex: index));
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
