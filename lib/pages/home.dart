import 'package:flutter/material.dart';
import 'package:sigmagg/globals.dart';
import 'package:sigmagg/widgets/card1c.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome Home GG"),
      ),
      backgroundColor: secPrimary,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Card1C(
              onTap: () {},
              text: "Cha ching",
            ),
          ],
        ),
      ),
    );
  }
}
