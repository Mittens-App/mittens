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
          height: 70,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 0.25, color: Theme.of(context).colorScheme.secondary)
            )
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(25, 20, 0, 0),
            child: Text(
              _header, 
              style: const TextStyle(fontSize: 30),
            ),
          ),
        );
  }
}