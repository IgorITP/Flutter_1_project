import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Example extends StatelessWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
       children: [
      TextWrapper(text: "1"),
      TextWrapper(text: "2"),
      TextWrapper(text: "3"),
      TextWrapper(text: "4"),
    ]);
  }
}

class TextWrapper extends StatelessWidget {
  final String text;
  const TextWrapper({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "example",
      style: TextStyle(fontSize: 20),
    );
  }
}
