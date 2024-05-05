import 'package:flutter/material.dart';
import 'package:flutter_application_1/202/package_learn_view.dart';
import 'package:flutter_application_1/202/theme/light_theme.dart';

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
      theme: LightTheme().theme,
      //  ThemeData.dark().copyWith(
      //     listTileTheme:
      //         const ListTileThemeData(contentPadding: EdgeInsets.zero),
      //     progressIndicatorTheme:
      //         const ProgressIndicatorThemeData(color: Colors.white),
      //     appBarTheme: const AppBarTheme(centerTitle: true, elevation: 0)),
      home: const PackageLearn(),
    );
  }
}

//MeterialApp içinde bulunan theme yeri klasörlere özel tehem ların yapılabileceği bir alandır 


// Projede iki adet lib içinde dosya oluşturulur ve bu dosyalar product ve demos şeklinde adlandırılır Product içinde projeye özgü şeyler core içinde ise heryerde kullanılacak componentler yüklenir yani mesela bir image componenti veya clasıda diyebiliriz bu heryerde kullanılabilecej-k türde birşeydir ama özel componentler Product içinde oluştururularak projeye yayılması gerekir