import 'package:flutter/material.dart';

class OverviewPage extends StatefulWidget {
  static const routeName = '/overview';
  const OverviewPage({super.key});

  @override
  State<OverviewPage> createState() => _OverviewPageState();
}

class _OverviewPageState extends State<OverviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text("Overview Page"),);
  }
}