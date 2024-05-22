//
//  Generated code. Do not modify.
//  source: protofiles/testcase.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'testcase.pb.dart' as $0;

export 'testcase.pb.dart';

@$pb.GrpcServiceName('src.v1.testcase.Testcase')
class TestcaseClient extends $grpc.Client {
  static final _$get = $grpc.ClientMethod<$0.GetRequest, $0.GetResponse>(
      '/src.v1.testcase.Testcase/Get',
      ($0.GetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetResponse.fromBuffer(value));
  static final _$create = $grpc.ClientMethod<$0.CreateRequest, $0.CreateResponse>(
      '/src.v1.testcase.Testcase/Create',
      ($0.CreateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CreateResponse.fromBuffer(value));
  static final _$update = $grpc.ClientMethod<$0.UpdateRequest, $0.UpdateResponse>(
      '/src.v1.testcase.Testcase/Update',
      ($0.UpdateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UpdateResponse.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$0.DeleteRequest, $0.DeleteResponse>(
      '/src.v1.testcase.Testcase/Delete',
      ($0.DeleteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DeleteResponse.fromBuffer(value));
  static final _$run = $grpc.ClientMethod<$0.RunRequest, $0.RunResponse>(
      '/src.v1.testcase.Testcase/Run',
      ($0.RunRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.RunResponse.fromBuffer(value));
  static final _$view = $grpc.ClientMethod<$0.ViewRequest, $0.ViewResponse>(
      '/src.v1.testcase.Testcase/View',
      ($0.ViewRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ViewResponse.fromBuffer(value));

  TestcaseClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetResponse> get($0.GetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get, request, options: options);
  }

  $grpc.ResponseFuture<$0.CreateResponse> create($0.CreateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateResponse> update($0.UpdateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteResponse> delete($0.DeleteRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }

  $grpc.ResponseFuture<$0.RunResponse> run($0.RunRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$run, request, options: options);
  }

  $grpc.ResponseFuture<$0.ViewResponse> view($0.ViewRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$view, request, options: options);
  }
}

@$pb.GrpcServiceName('src.v1.testcase.Testcase')
abstract class TestcaseServiceBase extends $grpc.Service {
  $core.String get $name => 'src.v1.testcase.Testcase';

  TestcaseServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetRequest, $0.GetResponse>(
        'Get',
        get_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetRequest.fromBuffer(value),
        ($0.GetResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateRequest, $0.CreateResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateRequest.fromBuffer(value),
        ($0.CreateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateRequest, $0.UpdateResponse>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateRequest.fromBuffer(value),
        ($0.UpdateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteRequest, $0.DeleteResponse>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteRequest.fromBuffer(value),
        ($0.DeleteResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RunRequest, $0.RunResponse>(
        'Run',
        run_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RunRequest.fromBuffer(value),
        ($0.RunResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ViewRequest, $0.ViewResponse>(
        'View',
        view_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ViewRequest.fromBuffer(value),
        ($0.ViewResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetResponse> get_Pre($grpc.ServiceCall call, $async.Future<$0.GetRequest> request) async {
    return get(call, await request);
  }

  $async.Future<$0.CreateResponse> create_Pre($grpc.ServiceCall call, $async.Future<$0.CreateRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$0.UpdateResponse> update_Pre($grpc.ServiceCall call, $async.Future<$0.UpdateRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$0.DeleteResponse> delete_Pre($grpc.ServiceCall call, $async.Future<$0.DeleteRequest> request) async {
    return delete(call, await request);
  }

  $async.Future<$0.RunResponse> run_Pre($grpc.ServiceCall call, $async.Future<$0.RunRequest> request) async {
    return run(call, await request);
  }

  $async.Future<$0.ViewResponse> view_Pre($grpc.ServiceCall call, $async.Future<$0.ViewRequest> request) async {
    return view(call, await request);
  }

  $async.Future<$0.GetResponse> get($grpc.ServiceCall call, $0.GetRequest request);
  $async.Future<$0.CreateResponse> create($grpc.ServiceCall call, $0.CreateRequest request);
  $async.Future<$0.UpdateResponse> update($grpc.ServiceCall call, $0.UpdateRequest request);
  $async.Future<$0.DeleteResponse> delete($grpc.ServiceCall call, $0.DeleteRequest request);
  $async.Future<$0.RunResponse> run($grpc.ServiceCall call, $0.RunRequest request);
  $async.Future<$0.ViewResponse> view($grpc.ServiceCall call, $0.ViewRequest request);
}
