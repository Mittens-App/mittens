import 'package:flutter/material.dart';
import 'package:mittens/constant.dart';
import 'package:mittens/components/header.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  
  final String _header = 'SETTINGS';

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
              color: Colors.deepOrange.shade100,
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