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
        // can also use EdgeInsets.zero
        // ButtonStyle(
        //   elevation: MaterialStateProperty.all(0),
        //   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        //     RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(radius),
        //     ),
        //   ),
        //   backgroundColor: MaterialStateProperty.all<Color>(backColor),
        // ),
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

    //     return Container(
    // width: 415,
    // height: 44,
    // child: Stack(children: <Widget>[
    //   Positioned(
    //       top: 0,
    //       left: 0,
    //       child: Container(
    //           width: 415,
    //           height: 44,
    //           decoration: const BoxDecoration(
    //             borderRadius: BorderRadius.only(
    //               topLeft: Radius.circular(4),
    //               topRight: Radius.circular(4),
    //               bottomLeft: Radius.circular(4),
    //               bottomRight: Radius.circular(4),
    //             ),
    //             color: Color.fromRGBO(32, 91, 125, 1),
    //           ))),
    //   Positioned(
    //       top: 14,
    //       left: 180,
    //       child: Text(
    //         teks.toUpperCase(),
    //         textAlign: TextAlign.left,
    //         style: TextStyle(
    //             color: Color.fromRGBO(255, 255, 255, 1),
    //             fontFamily: 'Montserrat',
    //             fontSize: 14,
    //             letterSpacing:
    //                 0 /*percentages not used in flutter. defaulting to zero*/,
    //             fontWeight: FontWeight.normal,
    //             height: 1),
    //       )),
    // ]));
  }
}
