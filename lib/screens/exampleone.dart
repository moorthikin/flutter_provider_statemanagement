import 'package:flutter/material.dart';
import 'package:flutter_provider/provider/multiprovider.dart';
import 'package:provider/provider.dart';

class FirstExample extends StatefulWidget {
  const FirstExample({super.key});

  @override
  State<FirstExample> createState() => _FirstExampleState();
}

class _FirstExampleState extends State<FirstExample> {
  
  @override
  Widget build(BuildContext context) {
    print("hello");

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Consumer<ExampleoneProvider>(builder: (context, values, child) {
            print("This widget is only building");
            return Slider(
                min: 0,
                max: 1,
                value: values.initValue,
                onChanged: (val) {
                  values.setValue(val);
                });
          }),
          Consumer<ExampleoneProvider>(
            builder: (context, values, child) => Row(
              children: [
                Expanded(
                    child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.amber.withOpacity(values.initValue)),
                )),
                Expanded(
                    child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.green.withOpacity(values.initValue)),
                )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
