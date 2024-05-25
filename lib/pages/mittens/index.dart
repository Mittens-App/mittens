import 'package:flutter/material.dart';
import 'package:mittens/constant.dart';
import 'package:mittens/components/header.dart';

class MittensPage extends StatefulWidget {
  const MittensPage({super.key});

  @override
  State<MittensPage> createState() => _MittensPageState();
}

class _MittensPageState extends State<MittensPage> {
  
  final String _header = 'MITTENS';

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
              color: Colors.blue.shade100,
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
