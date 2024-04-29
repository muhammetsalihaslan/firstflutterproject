import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({super.key, this.userName});
  final String name = "Veli";
  final String? userName;
  final ProjectKeys keys = ProjectKeys();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome $name',
            maxLines: 2,
            textAlign: TextAlign.right,
            style: ProjectStyles.welcomeStyle,
          ),
          Text(
            'Hello $name',
            maxLines: 2,
            textAlign: TextAlign.right,
            style: ProjectStyles.welcomeStyle,
          ),
          Text(
            'Hello $name',
            maxLines: 2,
            textAlign: TextAlign.right,
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(color: ProjectColors.welcomeColor),
          ),
          Text(userName ??
              ""), // burada kullanımı (username!) şeklinde yapılmaz bunun anlamı kesin dolu gelicektir nullın kesin dolu gelmesi gibi bir durum söz konusu değildir

          Text(keys.welcome),
        ],
      )),
    );
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
      wordSpacing: 2,
      color: Colors.red,
      decoration: TextDecoration.underline,
      fontStyle: FontStyle.italic,
      letterSpacing: 2,
      fontSize: 25,
      fontWeight: FontWeight.w600);
}

class ProjectColors {
  static Color welcomeColor = Colors.red;
}

class ProjectKeys {
  final String welcome = "Merhaba";
}
