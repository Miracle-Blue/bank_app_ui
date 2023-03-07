import 'package:flutter/material.dart';

import 'ui/main_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bank App',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: const Main(),
    );
  }
}
