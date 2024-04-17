import 'package:flutter/material.dart';
import 'package:mittens/constants/style.dart';

class InputTextField extends StatelessWidget {
  const InputTextField({
    super.key,
    required this.inputController,
    required this.hint,
  });

  final TextEditingController inputController;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 500,
      child: TextField(
        controller: inputController,
        cursorColor: Colors.black,
        style: const TextStyle(
            color: Colors.black,
            fontFamily: 'Montserrat',
            fontSize: 12,
            letterSpacing:
                0 /*percentages not used in flutter. defaulting to zero*/,
            fontWeight: FontWeight.normal,
            height: 1),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(
              color: kHintTextColor,
              fontFamily: 'Montserrat',
              fontSize: 12,
              letterSpacing:
                  0 /*percentages not used in flutter. defaulting to zero*/,
              fontWeight: FontWeight.normal,
              height: 1),
          filled: true,
          fillColor: Colors.white,
          border: const OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(5))),
        ),
      ),
    );
  }
}
