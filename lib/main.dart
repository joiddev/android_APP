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
        //Scaffold = layout
        appBar: AppBar(
          title: Text("APJ"),
        ),
        body: Center(
          child: Image(image: NetworkImage("https://scontent.fbkk13-2.fna.fbcdn.net/v/t39.30808-6/294420161_1726903590976067_8516873884478596380_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=2xOiD2I8oQYAX9sC7Do&tn=vqKb6maqWirdVNT9&_nc_ht=scontent.fbkk13-2.fna&oh=00_AT88DSl3yXK2R8sWOXeQdJuoCd-kZ2ioREizEgRsFaG8_g&oe=62E6C158"),
          ),
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}
