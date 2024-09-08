import 'package:flutter/material.dart';
import 'package:rocket/common/widgets/appbar/rocket_appbar.dart';
import 'package:rocket/common/widgets/backgrounds/background.dart';
import 'package:rocket/features/rocket/chatbot/widgets/message_bar.dart';
import 'package:rocket/features/rocket/chatbot/widgets/single_message_container.dart';

class Chatbot extends StatelessWidget {
  const Chatbot(
      {super.key,
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const RocketAppbar(
        title: "Chatbot",
      ),
      body: Background(
        child: const Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  verticalDirection: VerticalDirection.up,
                  children: [
                    SingleMessageContainer(
                      text: 'Ok, thanks.',
                    ),
                    SingleMessageContainer(
                      user: false,
                      text: 'Check it',
                    ),
                    SingleMessageContainer(
                      user: false,
                      text: 'https://docs.flutter.dev/testing/common-errors',
                    ),
                    SingleMessageContainer(
                      text: 'A RenderFlex overflowed…',
                    ),
                    SingleMessageContainer(
                      user: false,
                      text: 'Give the error text',
                    ),
                    SingleMessageContainer(
                      user: false,
                      text: 'Hello',
                    ),
                    SingleMessageContainer(
                        text: "There is an error in my code.",),
                    SingleMessageContainer(text: "Hi"),
                  ],
                ),
              ),
            ),
            MessageBar(),
          ],
        ),
      ),
    );
  }
}