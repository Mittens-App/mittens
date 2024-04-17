import 'package:flutter/material.dart';

class TestcasePage extends StatefulWidget {
  static const routeName = '/testcase';
  const TestcasePage({super.key});

  @override
  State<TestcasePage> createState() => _TestcasePageState();
}

class _TestcasePageState extends State<TestcasePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text("Testcase Page"),);
  }
}