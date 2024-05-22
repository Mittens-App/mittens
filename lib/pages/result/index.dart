import 'package:flutter/material.dart';
import 'package:mittens/constant.dart';
import 'package:mittens/pages/component_global/header.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  
  final String _header = 'RESULTS';

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
              color: Colors.purple.shade100,
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