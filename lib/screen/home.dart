import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset("assets/images/flower.jpg", width: 200, height: 200),
        SizedBox(height: 20),
        Image.network(
          "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
          width: 200,
          height: 200,
        ),
      ],
    );
  }
}
