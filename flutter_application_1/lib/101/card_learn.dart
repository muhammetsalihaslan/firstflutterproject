// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: const Column(
          children: [
            _CustomCard(
              child: SizedBox(
                  height: 100, width: 500, child: Center(child: Text("Ali"))),
            ),
            Card(
              margin: EdgeInsets.all(10),
              child: SizedBox(height: 100, width: 100),
            )
          ],
        ));
  }
}

class _CustomCard extends StatelessWidget {
  // ignore: unused_element
  const _CustomCard({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return const Card(
        margin: EdgeInsets.all(10),
        color: Colors.white,
        shape: StadiumBorder(),
        child: child);
  }
}
