import 'package:flutter/material.dart';
import 'package:mittens/pages/home/app_layout.dart';
import 'package:mittens/pages/login/components/action_button.dart';
import 'package:mittens/pages/login/components/input_textfield.dart';

class SigninPage extends StatefulWidget {
  static const routeName = '/signin';

  const SigninPage({super.key});
  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  late TextEditingController usernameController = TextEditingController();
  late TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator SigninPage - FRAME

    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          // width: 1440,
          // height: 900,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 1),
          ),
          child: Stack(children: <Widget>[
            Positioned(
                //top: 166,
                //left: 483,
                child: Container(
                    // alignment: Alignment.center,
                    width: 475,
                    height: 545,
                    child:
                        Stack(alignment: Alignment.center, children: <Widget>[
                      Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                              width: 475,
                              height: 545,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(
                                          0, 0, 0, 0.10000000149011612),
                                      offset: Offset(2, 5),
                                      blurRadius: 10)
                                ],
                                color: Color.fromRGBO(200, 226, 241, 1),
                              ))),
                      const Positioned(
                          top: 244,
                          left: 107,
                          child: Text(
                            'Welcome to MITTENS!',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(32, 91, 125, 1),
                                fontFamily: 'Montserrat',
                                fontSize: 22,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1),
                          )),
                      Positioned(
                          top: 277,
                          left: 30,
                          child: Container(
                              width: 415,
                              height: 71,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 27,
                                    left: 0,
                                    child: Container(
                                        width: 415,
                                        height: 44,
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4),
                                            topRight: Radius.circular(4),
                                            bottomLeft: Radius.circular(4),
                                            bottomRight: Radius.circular(4),
                                          ),
                                          color: const Color.fromRGBO(
                                              255, 255, 255, 1),
                                          border: Border.all(
                                            color: const Color.fromRGBO(
                                                229, 229, 229, 1),
                                            width: 1,
                                          ),
                                        ))),
                                Positioned(
                                    top: 28,
                                    left: 0,
                                    child: InputTextField(
                                        inputController: usernameController,
                                        hint: 'Enter your usename')),
                                const Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Text(
                                      'Username',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(108, 107, 107, 1),
                                          fontFamily: 'Montserrat',
                                          fontSize: 14,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                              ]))),
                      Positioned(
                          top: 368,
                          left: 30,
                          child: Container(
                              width: 415,
                              height: 71,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 27,
                                    left: 0,
                                    child: Container(
                                        width: 415,
                                        height: 44,
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4),
                                            topRight: Radius.circular(4),
                                            bottomLeft: Radius.circular(4),
                                            bottomRight: Radius.circular(4),
                                          ),
                                          color: const Color.fromRGBO(
                                              255, 255, 255, 1),
                                          border: Border.all(
                                            color: const Color.fromRGBO(
                                                229, 229, 229, 1),
                                            width: 1,
                                          ),
                                        ))),
                                Positioned(
                                    top: 28,
                                    left: 0,
                                    child: InputTextField(
                                        inputController: passwordController,
                                        hint: 'Enter your password')),
                                const Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Text(
                                      'Password',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(108, 107, 107, 1),
                                          fontFamily: 'Montserrat',
                                          fontSize: 14,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                              ]))),
                      Positioned(
                          top: 469,
                          left: 30,
                          child: ActionButton(
                            teks: "sign in",
                            press: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AppLayout(
                                            // title: '',
                                            selectedMenu: 0,
                                          )));
                            },
                          )),
                      Positioned(
                          top: 24,
                          left: 138,
                          child: Container(
                              width: 205,
                              height: 195,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('images/Catlogo.png'),
                                    fit: BoxFit.fitWidth),
                              ))),
                    ]))),
          ])),
    );
  }
}