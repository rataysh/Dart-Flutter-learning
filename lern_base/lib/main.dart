import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "RABBIT TEST",
      home: Scaffold(
        appBar: AppBar(
          title: Text("RABBIT"),
          centerTitle: true,
        ),
        body: Text(
          "Centr in my App",
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Text("Add"),
          backgroundColor: Colors.blue[800],
        ),
        // bottomNavigationBar: BottomNavigationBar(),
      ),
    );
  }
}
