import 'package:flutter/material.dart';

class ImageLearn202 extends StatefulWidget {
  const ImageLearn202({super.key});

  @override
  State<ImageLearn202> createState() => _ImageLearn202State();
}

class _ImageLearn202State extends State<ImageLearn202> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ImagePaths.images.toWidget());
  }
}

enum ImagePaths { images }

extension ImagePathsExtension on ImagePaths {
  String path() {
    return "assets/png/$name.jpeg";
  }

  Widget toWidget() {
    return Image.asset(path());
  }
}



//! bu kısımda best practise olarak enum ve extension verilmiş 
