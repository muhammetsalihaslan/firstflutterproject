import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
              onPressed: () {
                //Servise istek at,
                //sayfanın rengini düzenle gibi işlemler buradan yapılır
              },
              child: const Text("save")),
          ElevatedButton(onPressed: () {}, child: const Text("save")),
          InkWell(onTap: () {}, child: const Text("save")),
        ],
      ),
    );
  }
}

// 3. video 27. dakika buttun bitti scaffoldda geçti tekrar oradan devam edeceğiz
