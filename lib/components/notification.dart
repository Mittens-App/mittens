
import 'package:flutter/material.dart';

class NotificationContent {
  String _message = "";
  BuildContext? _context;

  NotificationContent(this._context);

  NotificationContent setText(String message) {
    _message = message;
    return this;
  }

  void show() {
    ScaffoldMessenger.of(_context!).showSnackBar(
      SnackBar(content: Text(_message)),
    );
  }
}