import 'dart:ffi';

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
  
  int number= 0;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("Used inite state");
  }

  //แสดงผลข้อมูล
  @override
  Widget build(BuildContext context) {
    print("used Build");
    return Scaffold(
        appBar: AppBar(
          title: Text("บัญชีของฉัน",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
        ),
        body: Column(
          children: [
            Text(number.toString(), style: TextStyle(fontSize: 30),)
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          setState(() {
            number++;
          });
        },
        child: Icon(Icons.add),),
    );
  }
}

//Scaffold = layout
