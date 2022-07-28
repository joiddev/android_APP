import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
    title: "My App",
    home: Scaffold(
      appBar: AppBar(
        title: Text("APJ"),
      ),
      body: Text("Hello") ,
    ),
  );

  runApp(app);
}
