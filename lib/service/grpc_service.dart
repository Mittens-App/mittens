import "package:flutter/services.dart" as s;
import "package:grpc/grpc_web.dart";
import "package:mittens/protofiles/tag.pbgrpc.dart" as tag;
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
    final file = await s.rootBundle.loadString('assets/cfg/cfg.yaml');
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
  WebCallOptions _authOptions() {
    return WebCallOptions(
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

  /// Get list of tags
  Future<MyResponse> getTags(String? key) async {
    final channel = _getChannel();
    final stub = tag.TagClient(channel, options: _authOptions());
    String message = "";
    bool status = false;
    tag.GetResponse? response;

     try {
      response = await stub.get(
        tag.GetRequest(keyword: key)  
      );
      status = true;
    } on GrpcError catch (er) {
      message = er.message!;
    }
    await channel.shutdown();
    return Future.value(MyResponse(
      status, message, response
    ));
  }

  Future<MyResponse> saveOrUpdateTag(int id, String name, String desc, String color) async {
    final channel = _getChannel();
    final stub = tag.TagClient(channel, options: _authOptions());
    String message = "";
    bool status = false;
    // tag.CreateResponse? response;
    Object? response;

     try {
      if (id == 0) {
        response = await stub.create(
          tag.CreateRequest(
            name: name,
            desc: desc,
            color: color
          )  
        );
      } else {
        response = await stub.update(
          tag.UpdateRequest(
            id: id,
            name: name,
            desc: desc,
            color: color
          )  
        );
      }
      
      status = true;
    } on GrpcError catch (er) {
      message = er.message!;
    }
    await channel.shutdown();
    return Future.value(MyResponse(
      status, message, response
    ));
  }

  /// Delete tag
  Future<MyResponse> deleteTag(int id) async {
    final channel = _getChannel();
    final stub = tag.TagClient(channel, options: _authOptions());
    String message = "";
    bool status = false;
    tag.DeleteResponse? response;

     try {
      response = await stub.delete(
        tag.DeleteRequest(id: id)  
      );
      status = true;
    } on GrpcError catch (er) {
      message = er.message!;
    }
    await channel.shutdown();
    return Future.value(MyResponse(
      status, message, response
    ));
  }

}