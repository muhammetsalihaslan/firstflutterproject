import 'package:flutter/material.dart';

class SharedLearnView extends StatefulWidget {
  const SharedLearnView({super.key});

  @override
  State<SharedLearnView> createState() => _SharedLearnViewState();
}

class _SharedLearnViewState extends State<SharedLearnView> {
  int _currentValue = 0;
  void _onChangeValue(String value) {
    final value0 = int.tryParse(value);
    if (value0 != null) {
      setState(() {
        _currentValue = value0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(_currentValue.toString())),
        body: TextField(
          onChanged: (value) {
            _onChangeValue(value);
          },
        ));
  }
}


//! 18. dakikada kaldık sharedPreference öğrenildi ana kod içinde ekle ve remove et öğrenildi 