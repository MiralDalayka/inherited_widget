import 'package:flutter/material.dart';
import 'models/data_layer.dart';
import 'view/view_layer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //  to define the StateWidget as the root widget we need to define it here

    return StateWidget(
      child: MaterialApp(
          title: 'inherited widget example',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          debugShowCheckedModeBanner: false,
          home: const HomePage()),
    );
  }
}
