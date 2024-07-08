//
//  Generated code. Do not modify.
//  source: protofiles/report.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ReportRequest extends $pb.GeneratedMessage {
  factory ReportRequest() => create();
  ReportRequest._() : super();
  factory ReportRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReportRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReportRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'src.v1.report'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReportRequest clone() => ReportRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReportRequest copyWith(void Function(ReportRequest) updates) => super.copyWith((message) => updates(message as ReportRequest)) as ReportRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReportRequest create() => ReportRequest._();
  ReportRequest createEmptyInstance() => create();
  static $pb.PbList<ReportRequest> createRepeated() => $pb.PbList<ReportRequest>();
  @$core.pragma('dart2js:noInline')
  static ReportRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReportRequest>(create);
  static ReportRequest? _defaultInstance;
}

class ReportResponse extends $pb.GeneratedMessage {
  factory ReportResponse({
    $core.int? totalTestcases,
    $core.int? totalTags,
    $core.double? totalEfectiveness,
    $core.Iterable<DataResponse>? resultData,
    $core.Iterable<TagDataResponse>? tagData,
    $core.String? currentMonthString,
    $core.int? currentMonth,
    $core.int? currentYear,
    $core.String? status,
  }) {
    final $result = create();
    if (totalTestcases != null) {
      $result.totalTestcases = totalTestcases;
    }
    if (totalTags != null) {
      $result.totalTags = totalTags;
    }
    if (totalEfectiveness != null) {
      $result.totalEfectiveness = totalEfectiveness;
    }
    if (resultData != null) {
      $result.resultData.addAll(resultData);
    }
    if (tagData != null) {
      $result.tagData.addAll(tagData);
    }
    if (currentMonthString != null) {
      $result.currentMonthString = currentMonthString;
    }
    if (currentMonth != null) {
      $result.currentMonth = currentMonth;
    }
    if (currentYear != null) {
      $result.currentYear = currentYear;
    }
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  ReportResponse._() : super();
  factory ReportResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReportResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReportResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'src.v1.report'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'totalTestcases', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'totalTags', $pb.PbFieldType.OU3)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'totalEfectiveness', $pb.PbFieldType.OD)
    ..pc<DataResponse>(4, _omitFieldNames ? '' : 'ResultData', $pb.PbFieldType.PM, protoName: 'ResultData', subBuilder: DataResponse.create)
    ..pc<TagDataResponse>(5, _omitFieldNames ? '' : 'TagData', $pb.PbFieldType.PM, protoName: 'TagData', subBuilder: TagDataResponse.create)
    ..aOS(6, _omitFieldNames ? '' : 'currentMonthString')
    ..a<$core.int>(7, _omitFieldNames ? '' : 'currentMonth', $pb.PbFieldType.OU3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'currentYear', $pb.PbFieldType.OU3)
    ..aOS(9, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReportResponse clone() => ReportResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReportResponse copyWith(void Function(ReportResponse) updates) => super.copyWith((message) => updates(message as ReportResponse)) as ReportResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReportResponse create() => ReportResponse._();
  ReportResponse createEmptyInstance() => create();
  static $pb.PbList<ReportResponse> createRepeated() => $pb.PbList<ReportResponse>();
  @$core.pragma('dart2js:noInline')
  static ReportResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReportResponse>(create);
  static ReportResponse? _defaultInstance;

  /// total active testcases
  @$pb.TagNumber(1)
  $core.int get totalTestcases => $_getIZ(0);
  @$pb.TagNumber(1)
  set totalTestcases($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTotalTestcases() => $_has(0);
  @$pb.TagNumber(1)
  void clearTotalTestcases() => clearField(1);

  /// total active tags
  @$pb.TagNumber(2)
  $core.int get totalTags => $_getIZ(1);
  @$pb.TagNumber(2)
  set totalTags($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTotalTags() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotalTags() => clearField(2);

  /// total efectiveness
  @$pb.TagNumber(3)
  $core.double get totalEfectiveness => $_getN(2);
  @$pb.TagNumber(3)
  set totalEfectiveness($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTotalEfectiveness() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotalEfectiveness() => clearField(3);

  /// list data result top 5 result
  @$pb.TagNumber(4)
  $core.List<DataResponse> get resultData => $_getList(3);

  /// list data tag top 5 result
  @$pb.TagNumber(5)
  $core.List<TagDataResponse> get tagData => $_getList(4);

  /// current month string
  @$pb.TagNumber(6)
  $core.String get currentMonthString => $_getSZ(5);
  @$pb.TagNumber(6)
  set currentMonthString($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCurrentMonthString() => $_has(5);
  @$pb.TagNumber(6)
  void clearCurrentMonthString() => clearField(6);

  /// current month
  @$pb.TagNumber(7)
  $core.int get currentMonth => $_getIZ(6);
  @$pb.TagNumber(7)
  set currentMonth($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCurrentMonth() => $_has(6);
  @$pb.TagNumber(7)
  void clearCurrentMonth() => clearField(7);

  /// current year
  @$pb.TagNumber(8)
  $core.int get currentYear => $_getIZ(7);
  @$pb.TagNumber(8)
  set currentYear($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasCurrentYear() => $_has(7);
  @$pb.TagNumber(8)
  void clearCurrentYear() => clearField(8);

  /// status request
  @$pb.TagNumber(9)
  $core.String get status => $_getSZ(8);
  @$pb.TagNumber(9)
  set status($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasStatus() => $_has(8);
  @$pb.TagNumber(9)
  void clearStatus() => clearField(9);
}

class DataResponse extends $pb.GeneratedMessage {
  factory DataResponse({
    $core.int? id,
    $core.String? date,
    $core.String? name,
    $core.String? status,
    $core.String? executor,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (date != null) {
      $result.date = date;
    }
    if (name != null) {
      $result.name = name;
    }
    if (status != null) {
      $result.status = status;
    }
    if (executor != null) {
      $result.executor = executor;
    }
    return $result;
  }
  DataResponse._() : super();
  factory DataResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DataResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DataResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'src.v1.report'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'date')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'status')
    ..aOS(5, _omitFieldNames ? '' : 'executor')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DataResponse clone() => DataResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DataResponse copyWith(void Function(DataResponse) updates) => super.copyWith((message) => updates(message as DataResponse)) as DataResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DataResponse create() => DataResponse._();
  DataResponse createEmptyInstance() => create();
  static $pb.PbList<DataResponse> createRepeated() => $pb.PbList<DataResponse>();
  @$core.pragma('dart2js:noInline')
  static DataResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DataResponse>(create);
  static DataResponse? _defaultInstance;

  /// id of result
  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  /// date of result
  @$pb.TagNumber(2)
  $core.String get date => $_getSZ(1);
  @$pb.TagNumber(2)
  set date($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDate() => $_has(1);
  @$pb.TagNumber(2)
  void clearDate() => clearField(2);

  /// name of result
  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  /// status of result
  @$pb.TagNumber(4)
  $core.String get status => $_getSZ(3);
  @$pb.TagNumber(4)
  set status($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearStatus() => clearField(4);

  /// executor result testcase
  @$pb.TagNumber(5)
  $core.String get executor => $_getSZ(4);
  @$pb.TagNumber(5)
  set executor($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasExecutor() => $_has(4);
  @$pb.TagNumber(5)
  void clearExecutor() => clearField(5);
}

class TagDataResponse extends $pb.GeneratedMessage {
  factory TagDataResponse({
    $core.int? id,
    $core.String? name,
    $core.int? total,
    $core.double? efectiveness,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (total != null) {
      $result.total = total;
    }
    if (efectiveness != null) {
      $result.efectiveness = efectiveness;
    }
    return $result;
  }
  TagDataResponse._() : super();
  factory TagDataResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TagDataResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TagDataResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'src.v1.report'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'total', $pb.PbFieldType.OU3)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'efectiveness', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TagDataResponse clone() => TagDataResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TagDataResponse copyWith(void Function(TagDataResponse) updates) => super.copyWith((message) => updates(message as TagDataResponse)) as TagDataResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TagDataResponse create() => TagDataResponse._();
  TagDataResponse createEmptyInstance() => create();
  static $pb.PbList<TagDataResponse> createRepeated() => $pb.PbList<TagDataResponse>();
  @$core.pragma('dart2js:noInline')
  static TagDataResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TagDataResponse>(create);
  static TagDataResponse? _defaultInstance;

  /// id of result
  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  /// tag name of result
  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  /// total test count per tag
  @$pb.TagNumber(3)
  $core.int get total => $_getIZ(2);
  @$pb.TagNumber(3)
  set total($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTotal() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotal() => clearField(3);

  /// efectiveness per tag
  @$pb.TagNumber(4)
  $core.double get efectiveness => $_getN(3);
  @$pb.TagNumber(4)
  set efectiveness($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEfectiveness() => $_has(3);
  @$pb.TagNumber(4)
  void clearEfectiveness() => clearField(4);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
