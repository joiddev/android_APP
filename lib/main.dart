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
  //กลุ่มข้อมูล
  List<FoodMenu> menu=[
    FoodMenu("hotdog", "500"),
    FoodMenu("sandwich", "2000")
  ];

  //แสดงผลข้อมูล
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("เลือกเมนูอาหาร"),
        ),
        body: ListView.builder(
          itemCount: menu.length,
          itemBuilder: (BuildContext context, int index) {
            FoodMenu food=menu[index];
            return ListTile(
            title: Text(food.name, style: TextStyle(fontSize: 30),),
            subtitle: Text("ราคา"+food.price+" บาท"),
          );
        }));
  }
}


//Scaffold = layout