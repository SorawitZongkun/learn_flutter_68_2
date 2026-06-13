import 'package:flutter/material.dart';

// import 'screen/home.dart';
import 'package:learn_flutter_68_2/screen/home.dart';

import 'package:learn_flutter_68_2/screen/item.dart';

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
        // body: Home(),
        body: Item(),
      ),
    ),
  );
}
