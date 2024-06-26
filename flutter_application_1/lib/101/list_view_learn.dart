import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({super.key});

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView(children: [
          Text(
            "Merhaba",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Container(color: Colors.red, height: 300),
          const Divider(),
          Container(color: Colors.red, height: 300),
          IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
          const Divider(height: 300),
          const _ListDemo()
        ]));
  }
}

class _ListDemo extends StatefulWidget {
  const _ListDemo({super.key});

  @override
  State<_ListDemo> createState() => __ListDemoState();
}

class __ListDemoState extends State<_ListDemo> {
  @override
  void initState() {
    super.initState();
    print("hello");
  }

  @override
  void dispose() {
    super.dispose();
    print("exit");
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
