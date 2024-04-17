import 'package:flutter/material.dart';

class MittensPage extends StatefulWidget {
  static const routeName = '/mittens';
  const MittensPage({super.key});

  @override
  State<MittensPage> createState() => _MittensPageState();
}

class _MittensPageState extends State<MittensPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Mittens Page"),
    );
  }
}
