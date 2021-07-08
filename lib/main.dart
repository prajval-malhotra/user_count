import 'package:flutter/material.dart';
import 'package:user_count/user_count.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return UserCount(
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
