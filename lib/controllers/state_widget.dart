import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inherited_widget/controllers/state_inherited_widget.dart';

/*
here we will create a stateful widget to change state
 */

class StateWidget extends StatefulWidget {
  const StateWidget({super.key, required this.child});

  final Widget child;

  @override
  State<StateWidget> createState() => _StateWidgetState();
}

class _StateWidgetState extends State<StateWidget> {
  //here we will change the state by creating a functions
  var counter = 0;

  void _changeCounter() {
    counter++;
  }

  @override
  Widget build(BuildContext context) {
    /*
    to define the InheritedWidgetController as the second widget we need to define it here
    by doing this we can access the counter from all widgets under the MaterialApp=child
    because MaterialApp is under InheritedWidget and the stateful
     */
    return StateInheritedWidget(
      counter: counter,
      child: widget.child,
    );
  }
}
