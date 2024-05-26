
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
              child: Container(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
                      toggle = !toggle;
                    });
                  }, 
                  icon: toggle ? const Icon(Icons.nightlight_round_rounded)
                  : const Icon(Icons.sunny)
                ),
              ),
            ),
            const Center(
              child: CircleAvatar(
              backgroundImage: AssetImage('assets/img/Catlogo.png'),
              radius: 78,
                        ),
            )
        ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
          child: Text("WELCOME TO MITTENS!",
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

        )
      ],
    );
  }
}