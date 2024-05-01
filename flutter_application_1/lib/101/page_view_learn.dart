import 'package:flutter/material.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({super.key});

  @override
  State<PageViewLearn> createState() => _PageViewLearn();
}

class _PageViewLearn extends State<PageViewLearn> {
  final _pageController = PageController(viewportFraction: 0.8);
  int _currentPageIndex = 0;
  void _updatePageIndex(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        children: [
          FloatingActionButton(
            onPressed: () {
              _pageController.previousPage(
                  duration: const Duration(seconds: 1),
                  curve: Curves.slowMiddle);
            },
            child: const Icon(Icons.chevron_left),
          ),
          FloatingActionButton(
            onPressed: () {
              _pageController.nextPage(
                  duration: const Duration(seconds: 1),
                  curve: Curves.slowMiddle);
            },
            child: const Icon(Icons.chevron_right),
          ),
        ],
      ),
      appBar: AppBar(),
      body: PageView(
        controller: _pageController,
        onPageChanged: _updatePageIndex,
        children: [
          Container(color: Colors.red),
          Container(color: Colors.blue),
          Container(color: Colors.green),
        ],
      ),
    );
  }
}


//! bri değişim istendiğinde setState kullanılır 