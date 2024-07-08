//
//  Generated code. Do not modify.
//  source: protofiles/report.proto
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

import 'report.pb.dart' as $0;

export 'report.pb.dart';

@$pb.GrpcServiceName('src.v1.report.Report')
class ReportClient extends $grpc.Client {
  static final _$report = $grpc.ClientMethod<$0.ReportRequest, $0.ReportResponse>(
      '/src.v1.report.Report/Report',
      ($0.ReportRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ReportResponse.fromBuffer(value));

  ReportClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.ReportResponse> report($0.ReportRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$report, request, options: options);
  }
}

@$pb.GrpcServiceName('src.v1.report.Report')
abstract class ReportServiceBase extends $grpc.Service {
  $core.String get $name => 'src.v1.report.Report';

  ReportServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ReportRequest, $0.ReportResponse>(
        'Report',
        report_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ReportRequest.fromBuffer(value),
        ($0.ReportResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.ReportResponse> report_Pre($grpc.ServiceCall call, $async.Future<$0.ReportRequest> request) async {
    return report(call, await request);
  }

  $async.Future<$0.ReportResponse> report($grpc.ServiceCall call, $0.ReportRequest request);
}
