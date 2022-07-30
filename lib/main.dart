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

  @override
  Widget build(BuildContext context) {


    List<Widget> data = [];
    data.add(Text("Number"));
    data.add(Text(number.toString(),style: TextStyle(fontSize: 60),));

    // Group of Text widget
    for(var i = 0; i<=9;i++){
      data.add(Text("Colum ${i+1}"));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("APJ"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, 
        children: data,
      ),),


      floatingActionButton: FloatingActionButton(
        onPressed: addNumber,
        child: Icon(Icons.add),
      ),
    );
  }

  //addNumber function
  void addNumber() {
    setState(() {
      number++;
    });
  }
}


//Scaffold = layout