import 'package:flutter/material.dart';
import 'FoodMenu.dart';

void main() {
  runApp(MyApp());
}

// Create Widget (StatelessWidget)
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

// StatefulWidget
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //แสดงผลข้อมูล
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("บัญชีของฉัน"),
        ),
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.limeAccent,
                  borderRadius: BorderRadius.circular(10)),
              height: 150,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(10)
              ),
              height: 150,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(10)
              ),
              height: 150,
            )
          ],
        ));
  }
}


//Scaffold = layout