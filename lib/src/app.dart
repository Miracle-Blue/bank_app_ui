import 'package:flutter/material.dart';

import 'common/app_state_controller.dart';
import 'ui/main_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bank App',
      theme: ThemeData(
        fontFamily: 'Rubik',
        primarySwatch: Colors.blue,
      ),
      home: const AppController(),
    );
  }
}

class AppController extends StatefulWidget {
  const AppController({super.key});

  @override
  State<AppController> createState() => _AppControllerState();
}

class _AppControllerState extends State<AppController> {
  @override
  Widget build(BuildContext context) {
    return AppInheritedWidget(
      notifier: AppStateController(),
      child: const Main(),
    );
  }
}

class AppInheritedWidget extends InheritedNotifier<AppStateController> {
  const AppInheritedWidget({
    required super.child,
    required super.notifier,
    super.key,
  });

  static AppStateController? of(BuildContext context) {
    return (context.getElementForInheritedWidgetOfExactType<AppInheritedWidget>()?.widget as AppInheritedWidget?)?.notifier;
  }
}
