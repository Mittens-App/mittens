import "package:flutter/services.dart" as s;
import "package:grpc/grpc_web.dart";
import "package:mittens/protofiles/user.pb.dart";
import "package:mittens/protofiles/user.pbgrpc.dart";
import "package:yaml/yaml.dart";

class MyResponse {
  final bool status;
  final String message;
  final Object? data;

  MyResponse(this.status, this.message, this.data);
}

class GrpcService {
  static String _hostProxy="";
  String _token="";

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

  /// set token
  GrpcService setToken(String token) {
    _token = token;
    return this;
  }

  /// token options
  CallOptions _authOptions() {
    return CallOptions(
        metadata: {
          "authorization" : "Bearer $_token"
        }
      );
  }

  /// Login user
  Future<MyResponse> login(String username, String password) async {
    final channel = _getChannel();
    final stub = UserClient(channel);
    String message = "";
    bool status = false;
    LoginResponse? response;
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

  /// Check session user
  Future<MyResponse> ping() async {
    final channel = _getChannel();
    final stub = UserClient(channel, options: _authOptions());
    String message = "";
    bool status = false;
    PingResponse? response;
    try {
      response = await stub.ping(PingRequest());
      status = true;
    } on GrpcError catch (er) {
      message = er.codeName;
    }
    await channel.shutdown();

    return Future.value(MyResponse(
      status, message, response
    ));
  }
}