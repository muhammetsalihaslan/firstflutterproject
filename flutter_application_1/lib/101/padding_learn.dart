import 'package:flutter/material.dart';
import 'package:flutter_application_1/101/app_bar.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(color: Colors.white, height: 300),
            ),
            Container(color: Colors.white, width: 300, height: 300)
          ],
        ));
  }
}
