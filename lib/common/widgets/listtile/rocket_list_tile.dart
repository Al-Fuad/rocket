// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:rocket/utils/constant/rocket_color.dart';

class RocketListTile extends StatelessWidget {
  const RocketListTile({
    super.key,
    this.icon,
    required this.title,
    this.onPressed,
  });

  final Widget ? icon;
  final String title;
  final VoidCallback ? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
            border: Border.all(
              color: RocketColor.primary,
            ),
            borderRadius: BorderRadius.circular(15.0)),
        child: ListTile(
          leading: icon,
            trailing: Icon(Icons.arrow_forward_ios),
            minTileHeight: 70,
            onTap: onPressed,
            title: Text(title)));
  }
}
