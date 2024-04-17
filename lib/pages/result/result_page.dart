import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  static const routeName = '/result';
  const ResultPage({super.key});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text("Result Page"),);
  }
}