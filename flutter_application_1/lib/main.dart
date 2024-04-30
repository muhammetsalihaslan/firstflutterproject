import 'package:flutter/material.dart';
import 'package:flutter_application_1/101/list_tile.dart';

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
      theme: ThemeData.dark().copyWith(
          listTileTheme:
              const ListTileThemeData(contentPadding: EdgeInsets.zero),
          progressIndicatorTheme:
              const ProgressIndicatorThemeData(color: Colors.white),
          appBarTheme: const AppBarTheme(centerTitle: true, elevation: 0)),
      home: const ListTileLearn(),
    );
  }
}

//MeterialApp içinde bulunan theme yeri klasörlere özel tehem ların yapılabileceği bir alandır 


// Projede iki adet lib içinde dosya oluşturulur ve bu dosyalar product ve demos şeklinde adlandırılır Product içinde projeye özgü şeyler core içinde ise heryerde kullanılacak componentler yüklenir 