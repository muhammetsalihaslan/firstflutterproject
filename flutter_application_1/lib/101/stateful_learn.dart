import 'package:flutter/material.dart';

class StatefulLearn extends StatefulWidget {
  const StatefulLearn({super.key});

  @override
  State<StatefulLearn> createState() => _StatefulLearnState();
}

class _StatefulLearnState extends State<StatefulLearn> {
  int _countValue = 0;

  int _counterCustom = 0;

  // void incrementValue() {
  //   setState(() {
  //     _countValue += 1;
  //   });
  // }

  // void decrementValue() {
  //   setState(() {
  //     _countValue -= 1;
  //   });
  // }

  void _updateCounter(bool isIncrement) {
    if (isIncrement) {
      _countValue += 1;
    } else {
      _countValue -= 1;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _increment(),
          _decrement(),
        ],
      ),
      body: Column(
        children: [
          Center(
              child: Text(_countValue.toString(),
                  style: Theme.of(context).textTheme.headlineLarge)),
          const Placeholder(),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  ++_counterCustom;
                });
              },
              child: Text("Merhaba $_counterCustom"))
        ],
      ),
    );
  }

  FloatingActionButton _increment() => FloatingActionButton(
      onPressed: () {
        _updateCounter(true);
      },
      child: const Icon(Icons.add));

  Padding _decrement() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: FloatingActionButton(
          onPressed: () {
            _updateCounter(false);
          },
          child: const Icon(Icons.remove)),
    );
  }
}



// ilk class stateless gibi çalışır ikincisi ise hayat gelişen alandır 


//! 23.59 saniyede kalındı _counterCustom arttırldı duruldu