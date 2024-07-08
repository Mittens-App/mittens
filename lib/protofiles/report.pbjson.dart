//
//  Generated code. Do not modify.
//  source: protofiles/report.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use reportRequestDescriptor instead')
const ReportRequest$json = {
  '1': 'ReportRequest',
};

/// Descriptor for `ReportRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reportRequestDescriptor = $convert.base64Decode(
    'Cg1SZXBvcnRSZXF1ZXN0');

@$core.Deprecated('Use reportResponseDescriptor instead')
const ReportResponse$json = {
  '1': 'ReportResponse',
  '2': [
    {'1': 'total_testcases', '3': 1, '4': 1, '5': 13, '10': 'totalTestcases'},
    {'1': 'total_tags', '3': 2, '4': 1, '5': 13, '10': 'totalTags'},
    {'1': 'total_efectiveness', '3': 3, '4': 1, '5': 1, '10': 'totalEfectiveness'},
    {'1': 'ResultData', '3': 4, '4': 3, '5': 11, '6': '.src.v1.report.DataResponse', '10': 'ResultData'},
    {'1': 'TagData', '3': 5, '4': 3, '5': 11, '6': '.src.v1.report.TagDataResponse', '10': 'TagData'},
    {'1': 'current_month_string', '3': 6, '4': 1, '5': 9, '10': 'currentMonthString'},
    {'1': 'current_month', '3': 7, '4': 1, '5': 13, '10': 'currentMonth'},
    {'1': 'current_year', '3': 8, '4': 1, '5': 13, '10': 'currentYear'},
    {'1': 'status', '3': 9, '4': 1, '5': 9, '10': 'status'},
  ],
};

/// Descriptor for `ReportResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reportResponseDescriptor = $convert.base64Decode(
    'Cg5SZXBvcnRSZXNwb25zZRInCg90b3RhbF90ZXN0Y2FzZXMYASABKA1SDnRvdGFsVGVzdGNhc2'
    'VzEh0KCnRvdGFsX3RhZ3MYAiABKA1SCXRvdGFsVGFncxItChJ0b3RhbF9lZmVjdGl2ZW5lc3MY'
    'AyABKAFSEXRvdGFsRWZlY3RpdmVuZXNzEjsKClJlc3VsdERhdGEYBCADKAsyGy5zcmMudjEucm'
    'Vwb3J0LkRhdGFSZXNwb25zZVIKUmVzdWx0RGF0YRI4CgdUYWdEYXRhGAUgAygLMh4uc3JjLnYx'
    'LnJlcG9ydC5UYWdEYXRhUmVzcG9uc2VSB1RhZ0RhdGESMAoUY3VycmVudF9tb250aF9zdHJpbm'
    'cYBiABKAlSEmN1cnJlbnRNb250aFN0cmluZxIjCg1jdXJyZW50X21vbnRoGAcgASgNUgxjdXJy'
    'ZW50TW9udGgSIQoMY3VycmVudF95ZWFyGAggASgNUgtjdXJyZW50WWVhchIWCgZzdGF0dXMYCS'
    'ABKAlSBnN0YXR1cw==');

@$core.Deprecated('Use dataResponseDescriptor instead')
const DataResponse$json = {
  '1': 'DataResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    {'1': 'date', '3': 2, '4': 1, '5': 9, '10': 'date'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'status', '3': 4, '4': 1, '5': 9, '10': 'status'},
    {'1': 'executor', '3': 5, '4': 1, '5': 9, '10': 'executor'},
  ],
};

/// Descriptor for `DataResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dataResponseDescriptor = $convert.base64Decode(
    'CgxEYXRhUmVzcG9uc2USDgoCaWQYASABKA1SAmlkEhIKBGRhdGUYAiABKAlSBGRhdGUSEgoEbm'
    'FtZRgDIAEoCVIEbmFtZRIWCgZzdGF0dXMYBCABKAlSBnN0YXR1cxIaCghleGVjdXRvchgFIAEo'
    'CVIIZXhlY3V0b3I=');

@$core.Deprecated('Use tagDataResponseDescriptor instead')
const TagDataResponse$json = {
  '1': 'TagDataResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'total', '3': 3, '4': 1, '5': 13, '10': 'total'},
    {'1': 'efectiveness', '3': 4, '4': 1, '5': 1, '10': 'efectiveness'},
  ],
};

/// Descriptor for `TagDataResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tagDataResponseDescriptor = $convert.base64Decode(
    'Cg9UYWdEYXRhUmVzcG9uc2USDgoCaWQYASABKA1SAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSFA'
    'oFdG90YWwYAyABKA1SBXRvdGFsEiIKDGVmZWN0aXZlbmVzcxgEIAEoAVIMZWZlY3RpdmVuZXNz');

