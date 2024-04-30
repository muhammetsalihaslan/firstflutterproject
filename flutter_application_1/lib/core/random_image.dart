import 'package:flutter/material.dart';

class RandomImage extends StatelessWidget {
  const RandomImage({super.key, this.height = 100});
  final imageUrl = "https://picsum.photos/536/354";
  final double height;
  @override
  Widget build(BuildContext context) {
    return Image.network(imageUrl, height: 100);
  }
}



// required this.height ve this.height iki farklı kullanım irisi kesin olarak gelmesi gereken diğeri ise bizim istediğimiz zaman getirdiğimiz işleme göre verillen işlemdir