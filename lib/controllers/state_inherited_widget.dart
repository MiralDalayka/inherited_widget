import 'package:flutter/material.dart';
import 'package:inherited_widget/models/data_layer.dart';

class StateInheritedWidget extends InheritedWidget {
  // if we inherit the InheritedWidget we should pass to it (WIDGET as child  parameter) and override updateShouldNotify function
  StateInheritedWidget(
      {super.key, required super.child, this.counter = 0, required this.state});

  final int counter; //this can not be changed once you create it
  StateWidget state;

  /*
  this function check the data on the widget
  if the data changed it will returns true
  in our example the counter var is the data who change in the widget
   */
  @override
  bool updateShouldNotify(covariant StateInheritedWidget oldWidget) =>
      oldWidget.counter != counter;

  //to edit the counter value we will create a static method
  /*
  1. copy the InheritedWidgetController child widget using of method
  2. edit it
  3. a sign it to the old widget as new widget
   */
/*
method body:
 // the context keep asking the parent widgets until it reach the InheritedWidgetController we created in the root
    // here i tell the context to find widget that is parent and of type InheritedWidgetController

 */
  static StateWidget of(BuildContext context) => context
      .dependOnInheritedWidgetOfExactType<StateInheritedWidget>()!
      .state; //now on other widget just use this method to copy the widget state to -use the data and functions-
}
