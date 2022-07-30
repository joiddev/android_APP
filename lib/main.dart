import 'package:flutter/material.dart';

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
  int number = 0; //Create State

  //แสดงผลข้อมูล
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("APJ"),
      ),
      body: Center(
        child: ListView(
          children: getData(20),
        ),
      ),
    );
  }

  //เตรียมข้อมูล
  List<Widget> getData(int count) {
    //text
    List<Widget> data = [];
    for (var i = 0; i < count; i++) {
      var menu = ListTile(
        title: Text("เมนูที่ ${i + 1}",style: TextStyle(fontSize: 25),),
        subtitle: Text("หัวข้อย่้อยที่ ${i + 1}"),
      );
      data.add(menu);
    }
    return data;
  }
}


//Scaffold = layout