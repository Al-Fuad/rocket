import 'package:flutter/material.dart';
import 'package:rocket/common/widgets/backgrounds/background.dart';
import 'package:rocket/utils/constant/app_text_size.dart';
import 'package:rocket/utils/constant/rocket_color.dart';

class RocketAppbar extends StatelessWidget implements PreferredSizeWidget {
  const RocketAppbar({super.key, required this.title, this.opacity = 1.0});

  final String title;
  final double opacity;

  @override
  Widget build(BuildContext context) {
    return Background(
      opacity: opacity,
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          title,
          style: TextStyle(fontSize: AppTextSize.title(context)),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(10),
          child: Container(
            color: RocketColor.primary,
            height: 1,
          ),
        ),
      ),
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
