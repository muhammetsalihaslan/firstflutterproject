import 'package:flutter/material.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ListTile(
            title: const Text("My Card"),
            onTap: () {},
            subtitle: const Text("How do you use your Card"),
            leading: const Icon(Icons.money),
            trailing: const Icon(Icons.chevron_right),
          )
        ],
      ),
    );
  }
}


//Bir alanın kime ait olduğunu öğrenmek için container widgeta atılması gerekir 


