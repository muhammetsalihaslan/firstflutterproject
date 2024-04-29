import 'package:flutter/material.dart';

class ScaffoldLearn extends StatelessWidget {
  const ScaffoldLearn({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Scaffold samles")),
      body: const Text("merhaba"),
      backgroundColor: Colors.red,
      drawer: const Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: "a"),
        BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: "b"),
      ]),
    );
  }
}
