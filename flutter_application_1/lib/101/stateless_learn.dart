import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  const StatelessLearn({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            const TitleTextWidget(title: "Salih1"),
            const TitleTextWidget(title: "Sad"),
            const TitleTextWidget(title: "ever"),
            _emptyBox(),
            const TitleTextWidget(title: "mad"),
          ],
        ));
  }

  SizedBox _emptyBox() {
    return const SizedBox(
      height: 50,
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(title, style: Theme.of(context).textTheme.headlineMedium);
  }
}


//Flutter da style ekleyeceksen Theme kullanmaya çalış 