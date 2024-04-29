import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: _ColorsUtility.redColor),
              onPressed: () {},
              child: Text(
                "Food",
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(color: Colors.white),
              ))),
    );
  }
}

class _ColorsUtility {
  static const Color redColor = Colors.red;
}


// Kural: Birden fazla yerde kullanılacak buttonlar class içinde verilmesi gerekir 