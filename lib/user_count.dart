import 'package:flutter/material.dart';

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
    print('State - $state');

    if (state == AppLifecycleState.inactive ||
        state == AppLifecycleState.detached) {
      // make firebase function to -1 user from database when
      //  state is inactive/detached
      print('remove');
    }
    if (state == AppLifecycleState.resumed) {
      // make firebase function to +1 user in database when
      //  state is resumed
      print('add');
    }

    // NOTE - add a function to +1 user when signing in
    //  for the first time
  }
}
