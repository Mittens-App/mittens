import 'package:flutter/material.dart';
import 'package:mittens/pages/home/index.dart';
import 'package:mittens/pages/login/index.dart';
import 'package:mittens/service/grpc_service.dart';

void main() {
  runApp(const MyLoginPage());
  // runApp(const MyHomeScreen());

  GrpcService().initAsync();
}
