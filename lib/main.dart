import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Create Widget 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("APJ"),
        ),
        body: Text("Hello"),
      ),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}
