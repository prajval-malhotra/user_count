import 'package:flutter/material.dart';
import 'package:user_count/lifecycle_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LifeCycleManager(
      child: MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
          body: Center(
            child: FlutterLogo(),
          ),
        ),
      ),
    );
  }
}
