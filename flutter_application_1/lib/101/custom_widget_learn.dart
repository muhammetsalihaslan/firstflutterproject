import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({super.key});
  final String title = "Food";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                  child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: CostumFoodButton(title: title, onPressed: () {}))),
            ),
          ),
          const SizedBox(height: 100),
          CostumFoodButton(
            title: title,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class _ColorsUtility {
  // static const Color redColor = Colors.red;
  final Color redColor = Colors.red;
  final Color white = Colors.white;
}

class _PaddingUtulity {
  final EdgeInsets normalPadding = const EdgeInsets.all(8.0);
  final EdgeInsets normal2xPadding = const EdgeInsets.all(16.0);
}

class CostumFoodButton extends StatelessWidget {
  const CostumFoodButton(
      {super.key, required this.title, required this.onPressed});
  final String title;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: _ColorsUtility().redColor),
        onPressed: onPressed,
        child: Padding(
          padding: _PaddingUtulity().normal2xPadding,
          child: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(color: _ColorsUtility().white),
          ),
        ));
  }
}

// costumfood componentinde böyle yapmamaızın nedeni bu button farklı erlerde de kullanılacak ve değişkenlerini ona göre verdik iyice dikkat et

// Kural: Birden fazla yerde kullanılacak buttonlar class içinde verilmesi gerekir 

// Yukarıda ana widget ta buttonun değerini olduğu yere göre alma işlemi  sizedBox içine aldığımız işlemde  width: MediaQuery.of(context).size.width, şeklinde yaptık 