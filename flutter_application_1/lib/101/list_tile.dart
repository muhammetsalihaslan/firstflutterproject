import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ListTile(
            title: const RandomImage(),
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


