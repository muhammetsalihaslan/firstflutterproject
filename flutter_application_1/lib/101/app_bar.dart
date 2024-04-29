import 'package:flutter/material.dart';

class AppBarView extends StatelessWidget {
  const AppBarView({super.key});
  final String _title = "Welcome Learn";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(_title),
          leading: const Icon(Icons.home),
          backgroundColor: Colors.red,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.mark_email_unread_sharp),
            )
          ]),
    );
  }
}


// main içinde verdiğimiz appbarTheme direk burada işler 
