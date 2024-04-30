import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: const [Center(child: CenteredCircularWidget())],
        ),
        body: const Center(child: CenteredCircularWidget()));
  }
}

class CenteredCircularWidget extends StatelessWidget {
  const CenteredCircularWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator();
  }
}
