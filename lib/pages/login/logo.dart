
import 'package:flutter/material.dart';
import 'package:mittens/theme/provider.dart';
import 'package:provider/provider.dart';

class LoginLogo extends StatefulWidget {
  const LoginLogo({super.key});

  @override
  State<LoginLogo> createState() => _LoginLogoState();
}

class _LoginLogoState extends State<LoginLogo> {
  bool toggle = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 5,),
        Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width > 400 ? 400 : MediaQuery.of(context).size.width - 160,
              child: IconButton(
                alignment: Alignment.topRight,
                onPressed: () {
                  setState(() {
                    Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
                    toggle = !toggle;
                  });
                }, 
                icon: toggle ? const Icon(Icons.sunny)
                : const Icon(Icons.nightlight_round_rounded)
              ),
            ),
            const Center(
              child: CircleAvatar(
              backgroundImage: AssetImage('img/Catlogo.png'),
              radius: 78,
                        ),
            )
        ],
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
          child: Text("WELCOME TO MITTENS!",
            style: TextStyle(
              color: Color.fromRGBO(32, 91, 125, 1),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

        )
      ],
    );
  }
}