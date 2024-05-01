import 'package:flutter/material.dart';

class LifeCycleLearn extends StatefulWidget {
  const LifeCycleLearn({super.key, required this.massage});
  final String massage;

  @override
  State<LifeCycleLearn> createState() => _LifeCycleLearn();
}

class _LifeCycleLearn extends State<LifeCycleLearn> {
  String _message = "";
  late final bool _isOdd;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("b");
  }

  @override
  void didUpdateWidget(covariant LifeCycleLearn oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("c");
  }

  @override
  void dispose() {
    super.dispose();
    _message = "";
  }

  @override
  void initState() {
    super.initState();
    _message = widget.massage;
    _isOdd = widget.massage.length.isOdd;
    _oddEvenCondittion();
    print("a");
  }

  void _oddEvenCondittion() {
    if (_isOdd) {
      _message += "Odd";
    } else {
      _message += "Even";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title:
                _isOdd ? const Text("Kelime tek") : const Text("Kelime çift")),
        body: _isOdd
            ? TextButton(onPressed: () {}, child: Text(_message))
            : ElevatedButton(onPressed: () {}, child: Text(_message)));
  }
}
