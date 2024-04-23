import 'package:flutter/material.dart';
import 'package:munoz0516/all_containers0516.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Pandora",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xfffcd0ed),
            title: const Text(
              "Contenedores-Pandora0516",
              style: TextStyle(color: Color(0xff000000)),
            ),
          ),
          body: const AllContainers()),
    );
  }
}
