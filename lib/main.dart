import 'package:flutter/material.dart';
import 'package:mittens/pages/login/index.dart';
import 'package:mittens/theme/provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyLoginPage(),
    )
  );
}
