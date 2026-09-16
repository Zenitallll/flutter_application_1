import 'package:estron/latihan8.dart';
import 'package:estron/latihan8v2.dart';
import 'package:estron/pages/validasi.dart';
import 'package:estron/tugas7.dart';
import 'package:flutter/material.dart';
import 'package:estron/tugas9.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     // title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Latihan8v2(),
    );
  }
}
