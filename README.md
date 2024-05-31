a project to explain the inherited widget using MVC

InheritedWidget -> the root widget in the tree

data is passed and accessible through widgets by the context BUT only (passing var not functions)
context wii search using dependOnInheritedWidgetOfExactType

    // want to access the data from the InheritedWidget widget BY CONTEXT
    // the context keep asking the parent widgets until it reach the InheritedWidgetController we created in the root
    // final stateWidget = context.dependOnInheritedWidgetOfExactType<InheritedWidgetController>();  //later put it in static method
    // here i tell the context to find widget that is parent and of type InheritedWidgetController
now we can access the data 

-------------------------
using InheritedWidget to change the data is not enough because InheritedWidget in immutable -can not
be change once it created-
sol is Make the parent on the InheritedWidget is stateful widget --> it is not the root any more

STATEFUL --> INHERITED -> OUR WIDGETS