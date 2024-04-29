import 'package:flutter/material.dart';
import 'package:flutter_application_1/101/custom_widget_learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Salih',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(centerTitle: true, elevation: 0)),
      home: const CustomWidgetLearn(),
    );
  }
}
