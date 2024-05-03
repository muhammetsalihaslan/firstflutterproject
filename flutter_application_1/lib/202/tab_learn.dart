import 'package:flutter/material.dart';

class TabBarLearn extends StatefulWidget {
  const TabBarLearn({super.key});

  @override
  State<TabBarLearn> createState() => _TabBarLearnState();
}

class _TabBarLearnState extends State<TabBarLearn> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              bottom: const TabBar(tabs: [
                Tab(
                  text: "Page1",
                ),
                Tab(text: "Page2"),
              ]),
            ),
            body: TabBarView(
              children: [
                Container(color: Colors.red),
                Container(color: Colors.green),
              ],
            )));
  }
}


//! tabBar da childrenlar farklı sayfalar için verilebilir;