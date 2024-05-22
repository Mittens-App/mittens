import 'package:flutter/material.dart';

class HeaderContent extends StatelessWidget {
  const HeaderContent(
    this._header,
    {super.key,}
  );

  final String _header;

  @override
  Widget build(BuildContext context) {
    return Container(
          alignment: Alignment.topLeft,
          color: Colors.amber,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(25, 20, 0, 0),
            child: Text(
              _header, 
              style: const TextStyle(fontSize: 30, backgroundColor: Colors.blueAccent),
            ),
          ),
        );
  }
}