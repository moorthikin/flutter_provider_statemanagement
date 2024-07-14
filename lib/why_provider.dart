import 'dart:async';

import 'package:flutter/material.dart';

class WhyProvider extends StatefulWidget {
  const WhyProvider({super.key});

  @override
  State<WhyProvider> createState() => _WhyProviderState();
}

class _WhyProviderState extends State<WhyProvider> {
  int x = 0;
  @override
  void initState() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      x++;
      // print(x);
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("Build" + x.toString());
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateless Widget"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            DateTime.now().hour.toString() +
                ":" +
                DateTime.now().minute.toString() +
                ":" +
                DateTime.now().second.toString(),
            style: TextStyle(fontSize: 50),
          ),
          Center(
            child: Text(
              x.toString(),
              style: TextStyle(fontSize: 50),
            ),
          )
        ],
      ),
    );
  }
}
