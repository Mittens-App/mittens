import 'package:flutter/material.dart';
import 'package:mittens/constant.dart';
import 'package:mittens/components/header.dart';

class OverviewPage extends StatefulWidget {
  const OverviewPage({super.key});

  @override
  State<OverviewPage> createState() => _OverviewPageState();
}

class _OverviewPageState extends State<OverviewPage> {
  
  final String _header = 'OVERVIEW';

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
              color: Colors.yellow.shade100,
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