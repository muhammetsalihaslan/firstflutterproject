import 'package:flutter/material.dart';
import 'package:flutter_application_1/202/package/loading_bar.dart';

class PackageLearn extends StatefulWidget {
  const PackageLearn({super.key});

  @override
  State<PackageLearn> createState() => _PackageLearnState();
}

class _PackageLearnState extends State<PackageLearn>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const LoadingBar(),
    );
  }
}
