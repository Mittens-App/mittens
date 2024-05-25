import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mittens/constant.dart';
import 'package:mittens/components/header.dart';
import 'package:mittens/service/session_service.dart';
import 'package:mittens/theme/provider.dart';
import 'package:provider/provider.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  
  final String _header = 'SETTINGS';

  @override
  Widget build(BuildContext context) {
    const double heigtUp = 10;
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
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(60, 50, 60, 0),
                child: Column(
                  children: [

                    // #LOGOUT BUTTON
                    Container(
                      alignment: Alignment.topRight,
                      padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                      constraints: const BoxConstraints(maxWidth: 380, maxHeight: 35),
                      child: TextButton(
                        onPressed: () async {
                          await SessionService().destroy();
                          Navigator.of(context).pop(); 
                        }, 
                        style: TextButton.styleFrom(backgroundColor: const Color.fromARGB(255, 233, 47, 34),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          padding: EdgeInsets.zero,
                        ),
                        child: const Text("SIGNOUT",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        )
                      ),
                    ),

                    const SizedBox(height: heigtUp,),

                    // #BOX CHANGE THEME
                    const BoxSettingsTheme(),
                    
                    const SizedBox(height: heigtUp,),

                    // #BOX DELETE RESULT
                    BoxSettingsDelete(
                      "Delete All Result",
                      () {}
                    ),

                    const SizedBox(height: heigtUp,),

                    // #BOX DELETE MITTENS RESULT
                    BoxSettingsDelete(
                      "Delete All Mittens Result",
                      () {}
                    ),
                    
                    const SizedBox(height: heigtUp,),

                    // #BOX DELETE TAGS
                    BoxSettingsDelete(
                      "Delete All Tags",
                      () {}
                    ),

                    const SizedBox(height: heigtUp,),

                    // #BOX DELETE TESTCASE
                    BoxSettingsDelete(
                      "Delete All Testcase",
                      () {}
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class BoxSettingsTheme extends StatefulWidget {

  const BoxSettingsTheme({super.key});

  @override
  State<BoxSettingsTheme> createState() => _BoxSettingsThemeState();
}

class _BoxSettingsThemeState extends State<BoxSettingsTheme> {
  bool toggle = false;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        height: 35,
        constraints: const BoxConstraints(maxWidth: 400),
        decoration: BoxDecoration(
          borderRadius : const BorderRadius.all(
            Radius.circular(4)
          ),
          color : Theme.of(context).colorScheme.primary,
          border : Border.all(
            color: const Color.fromARGB(255, 48, 116, 155),
            width: 2,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: Row(
            children: [
              const Flexible(
                fit: FlexFit.tight,
                child: Text("Theme")),
              IconButton(
                alignment: Alignment.topRight,
                onPressed: () {
                  setState(() {
                    Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
                    toggle = !toggle;
                  });
                }, 
                icon: toggle ? const Icon(Icons.nightlight_round_rounded, size: 18,)
                : const Icon(Icons.sunny, size: 18,)
              )
            ],
          ),
        ),
      ),
    );
  }

}

class BoxSettingsDelete extends StatefulWidget {
  final String _textContent;
  final VoidCallback _function;
  const BoxSettingsDelete(this._textContent, this._function, {super.key});

  @override
  State<BoxSettingsDelete> createState() => _BoxSettingsDeleteState();
}

class _BoxSettingsDeleteState extends State<BoxSettingsDelete> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        height: 35,
        constraints: const BoxConstraints(maxWidth: 400),
        decoration: BoxDecoration(
          borderRadius : const BorderRadius.all(
            Radius.circular(4)
          ),
          color : Theme.of(context).colorScheme.primary,
          border : Border.all(
            color: const Color.fromARGB(255, 48, 116, 155),
            width: 2,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: Row(
            children: [
              Flexible(
                fit: FlexFit.tight,
                child: Text(widget._textContent)),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: TextButton(
                  onPressed: widget._function, 
                  style: TextButton.styleFrom(backgroundColor: Colors.red.shade800,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    padding: EdgeInsets.zero,
                  ),
                  child: const Text("DELETE",
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}