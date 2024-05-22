import "package:flutter/services.dart" as s;
import "package:grpc/grpc_web.dart";
import "package:protobuf/protobuf.dart";
import "package:mittens/protofiles/user.pbgrpc.dart";
import "package:yaml/yaml.dart";

class MyResponse {
  final bool status;
  final String message;
  final GeneratedMessage? data;

  MyResponse(this.status, this.message, this.data);
}

class GrpcService {
  static String _hostProxy="";

  GrpcService();
  
  Future<GrpcService> initAsync() async {
    final file = await s.rootBundle.loadString('cfg/cfg.yaml');
    final yaml = loadYaml(file);
    _hostProxy = yaml['proxy_host']; 

    return this;
  }

  GrpcWebClientChannel _getChannel() {
    return GrpcWebClientChannel.xhr(Uri.parse(_hostProxy));
  }

  /// Login user
  Future<MyResponse> login(String username, String password) async {
    final channel = _getChannel();
    final stub = UserClient(channel);
    String message = "";
    bool status = false;
    GeneratedMessage? response;
    try {
      response = await stub.login(
        LoginRequest(
          username: username,
          password: password
        )
      );
      status = true;
    } on GrpcError catch (er) {
      message = er.codeName;
      // print('Caught error: $e');
    }
    await channel.shutdown();

    return Future.value(MyResponse(
      status, message, response
    ));
  }
}