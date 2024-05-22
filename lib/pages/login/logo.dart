
import 'package:flutter/material.dart';

class LoginLogo extends StatelessWidget {
  const LoginLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 15,),
        Container(
          width: 160,
          height: 155,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/img/Catlogo.png'),
                fit: BoxFit.fitWidth),
          )
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