import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class card_info extends StatelessWidget {
  const card_info({
    super.key,
    required this.title,
    required this.value,
    required this.border_color,
  });
  final String title;
  final String value;
  final Color border_color;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6.0,
      color: border_color,
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Container(
        margin: const EdgeInsets.only(right: 14),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            Text(
              value,
              style: TextStyle(color: Colors.black, fontSize: 70),
            )
          ],
        ),
      ),
    );
  }
}
