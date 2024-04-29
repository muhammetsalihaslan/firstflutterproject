import 'package:flutter/material.dart';

class IconLearn extends StatelessWidget {
  const IconLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Hello")),
        body: Column(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.message_outlined),
              color: Colors.red,
              iconSize: 50,
            )
          ],
        ));
  }
}
