import "package:flutter/material.dart";

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const SizedBox(
            width: 200,
            height: 50,
            child: Text("aaaaaaaaaaaaaaaaaaaaaaaaabbbbb"),
          ),
          const SizedBox.shrink(),
          const SizedBox.square(
            dimension: 70,
            child: Text("bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb"),
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.red,
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(20),
            child: Text("aa" * 50),
          ),
        ],
      ),
    );
  }
}
