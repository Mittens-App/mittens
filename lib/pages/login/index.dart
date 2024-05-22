import 'package:flutter/material.dart';
import 'package:mittens/constant.dart';
import 'package:mittens/pages/login/form.dart';
import 'package:mittens/pages/login/logo.dart';

class MyLoginPage extends StatelessWidget {
  const MyLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  final String _header = 'LOGIN';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Title(
        color: Colors.white,
        title: Constants().titleFormat(_header.toLowerCase()),
        child: Center(
          
          // #BOX FORM WITH COLOR
          child: Container(
            width: MediaQuery.of(context).size.width > 400 ? 400 : MediaQuery.of(context).size.width - 150,
            height: 430,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(200, 226, 241, 1),
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.2),
                  offset: Offset(2, 5),
                  blurRadius: 5
                )
              ]
            ),
            child: const Column(
              children: [
                // #LOGO WITH LABEL
                LoginLogo(),
                // #LOGIN FORM
                LoginForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}