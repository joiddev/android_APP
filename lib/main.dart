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
    var column = Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              color: Colors.lightGreen,
              borderRadius: BorderRadius.circular(10)),
          height: 150,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "ยอดคงเหลือ",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: Text(
                  "200000",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,),
                      textAlign: TextAlign.right,
                ),
              )
            ],
          ),
        ),
      ],
    );
    return Scaffold(
        appBar: AppBar(
          title: Text("บัญชีของฉัน",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: column,
        ));
  }
}

//Scaffold = layout
