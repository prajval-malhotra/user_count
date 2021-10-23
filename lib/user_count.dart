import 'package:flutter/material.dart';
import 'package:flutter/globals.dart';

class UserCount extends StatefulWidget {
  // takes a child and returns it from the build function
  final Widget child;

  UserCount({Key? key, required this.child}) : super(key: key);

  @override
  _UserCountState createState() => _UserCountState();
}

//
class _UserCountState extends State<UserCount> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  @override
  void initState() {
    super.initState();
    // ? for null safety check
    WidgetsBinding.instance?.addObserver(this);
  }

  // disposing observer
  @override
  void dispose() {
    super.dispose();
    // ? for null safety check
    WidgetsBinding.instance?.removeObserver(this);
  }

  // provided by 'WidgetsBindingObserver'
  @override
  void didChangeAppLifecycleState(state) {
    super.didChangeAppLifecycleState(state);
    // print('State - $state');

    if (state == AppLifecycleState.inactive ||
        state == AppLifecycleState.detached) {
      //  state is inactive/detached
      Globals.readData("notAdd");
    }
    if (state == AppLifecycleState.resumed) {
      //  state is resumed
      Globals.readData('add');
    }
  }
}
