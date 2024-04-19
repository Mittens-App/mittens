import 'package:flutter/material.dart';
import 'package:mittens/constants/style.dart';
import 'package:sizer/sizer.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
    required this.teks,
    required this.press,
  });

  final String teks;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 415,
      height: 44,
      child: ElevatedButton(
        onPressed: press,
        style: ElevatedButton.styleFrom(
            minimumSize: Size.zero,
            padding: const EdgeInsets.all(0),
            backgroundColor: kPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            )),
        child: Text(
          teks.toUpperCase(),
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
              color: kTextWhiteColor,
              fontWeight: FontWeight.normal,
              fontSize: 4.sp,
              letterSpacing: 0),
        ),
      ),
    );
  }
}
