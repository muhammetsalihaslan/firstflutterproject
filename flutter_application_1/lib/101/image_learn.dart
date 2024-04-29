import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
              height: 200,
              width: 200,
              child: Image.asset(
                "assets/images.jpeg",
                fit: BoxFit.fitHeight,
              ))
        ],
      ),
    );
  }
}
