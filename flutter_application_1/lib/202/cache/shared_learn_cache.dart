import 'package:flutter/material.dart';

class CacheLearn extends StatefulWidget {
  const CacheLearn({super.key});

  @override
  State<CacheLearn> createState() => _CacheLearnState();
}

class _CacheLearnState extends State<CacheLearn> {
  int _currentValue = 0;
  void _onChangeValue(String value) {
    final _value = int.tryParse(value);
    if (_value != null) {
      setState(() {
        _currentValue = _value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: TextField(
          onChanged: (value) {
            _onChangeValue(value);
          },
        ));
  }
}
