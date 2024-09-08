import 'package:flutter/material.dart';
import 'package:rocket/utils/constant/rocket_color.dart';

class SingleMessageContainer extends StatelessWidget {
  const SingleMessageContainer(
      {super.key,
      required this.text, this.user = true});

  final bool user;
  final String text;


  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: user ? Alignment.centerRight : Alignment.centerLeft,
      child: ConstrainedBox(
        constraints:
            const BoxConstraints(minHeight: 10, minWidth: 120, maxWidth: 300),
        child: Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(
              color: RocketColor.primary,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 8, top: 8, bottom: 15, right: 8),
                child: Text(
                  text,
                  style: const TextStyle(fontSize: 13),
                ),
              ),
              ],
          ),
        ),
      ),
    );
  }
}