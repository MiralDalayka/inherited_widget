import 'package:flutter/material.dart';
import 'package:inherited_widget/models/data_layer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // want to access the counter from the root widget BY CONTEXT
    final stateWidget =StateInheritedWidget.of(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Counter"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  stateWidget!.counter.toString(),
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.color_lens,
                      size: 50,
                    ),
                    label: Text(
                      "Change Primary Swatch",
                      style: Theme.of(context).textTheme.bodySmall,
                    ))
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
          },
          child: const Icon(
            Icons.add,
          ),
        ));
  }
}
