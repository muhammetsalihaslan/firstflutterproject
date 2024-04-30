import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: const Column(
          children: [
            Expanded(flex: 4, child: FlutterLogo()),
            Expanded(flex: 2, child: FlutterLogo()),
            Expanded(flex: 2, child: FlutterLogo()),
            Row(
              children: [
                FlutterLogo(),
                FlutterLogo(),
                FlutterLogo(),
                FlutterLogo(),
                FlutterLogo(),
              ],
            ),
          ],
        ));
  }
}


//Expended sadece row ve column için kullanılır flex ile işlem alacağı alan belirlenir