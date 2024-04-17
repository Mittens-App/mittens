import 'package:flutter/material.dart';

class TagsPage extends StatefulWidget {
  static const routeName = '/tags';
  const TagsPage({super.key});

  @override
  State<TagsPage> createState() => _TagsPageState();
}

class _TagsPageState extends State<TagsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text("Tags Page"),);
  }
}