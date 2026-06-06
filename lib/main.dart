import 'package:flutter/material.dart';

void main() {
  // runApp(const MyApp());

  // const app = MaterialApp(title: "หัวข้อ", home: Text("Hello World"));
  // runApp(app);

  runApp(
    MaterialApp(
      title: "หัวข้อ",
      home: Scaffold(
        appBar: AppBar(
          title: Text("หัวข้อ"),
          backgroundColor: Colors.pinkAccent,
          centerTitle: true,
        ),
        body: Home(),
      ),
    ),
  );
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("Hello World 2");
  }
}
