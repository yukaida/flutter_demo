import 'dart:ffi';

import 'package:flutter/material.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("flutter application")),
      ),
      body: const MyContentBody(),
    );
  }
}

class MyContentBody extends StatefulWidget {
  const MyContentBody({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyContentBodyState();
  }
}

class MyContentBodyState extends State<MyContentBody> {
  var checked = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Checkbox(
              value: checked,
              onChanged: (value) {
                setState(() {
                  print(value);
                  checked = value!;
                });
              }),
          const Text(
            "同意协议",
            style: TextStyle(
              fontSize: 30,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
