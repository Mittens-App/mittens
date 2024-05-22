import 'package:flutter/material.dart';
import 'package:mittens/constant.dart';
import 'package:mittens/pages/component_global/header.dart';

class TestcasePage extends StatefulWidget {
  const TestcasePage({super.key});

  @override
  State<TestcasePage> createState() => _TestcasePageState();
}

class _TestcasePageState extends State<TestcasePage> {
  
  final String _header = 'TESTCASE';

  @override
  Widget build(BuildContext context) {
    return Title(
      color: Colors.white,
      title: Constants().titleFormat(_header.toLowerCase()),
      child: Column(
        children: [
          // #Header Content
          HeaderContent(_header),
      
          // #Body
          Expanded(
            child: Container(
              color: Colors.red.shade100,
              alignment: Alignment.center,
              child: const Text(
                'Body',
                style:  TextStyle(fontSize: 40),
              ),
            ),
          ),
        ],
      ),
    );
  }
}