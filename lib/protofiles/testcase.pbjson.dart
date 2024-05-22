//
//  Generated code. Do not modify.
//  source: protofiles/testcase.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use getRequestDescriptor instead')
const GetRequest$json = {
  '1': 'GetRequest',
  '2': [
    {'1': 'filter', '3': 1, '4': 1, '5': 9, '10': 'filter'},
    {'1': 'keyword', '3': 2, '4': 1, '5': 9, '10': 'keyword'},
    {'1': 'limit', '3': 3, '4': 1, '5': 13, '10': 'limit'},
    {'1': 'page', '3': 4, '4': 1, '5': 13, '10': 'page'},
  ],
};

/// Descriptor for `GetRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRequestDescriptor = $convert.base64Decode(
    'CgpHZXRSZXF1ZXN0EhYKBmZpbHRlchgBIAEoCVIGZmlsdGVyEhgKB2tleXdvcmQYAiABKAlSB2'
    'tleXdvcmQSFAoFbGltaXQYAyABKA1SBWxpbWl0EhIKBHBhZ2UYBCABKA1SBHBhZ2U=');

@$core.Deprecated('Use getResponseDescriptor instead')
const GetResponse$json = {
  '1': 'GetResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
    {'1': 'data', '3': 2, '4': 3, '5': 11, '6': '.src.v1.testcase.DataResponse', '10': 'data'},
    {'1': 'metadata', '3': 3, '4': 1, '5': 11, '6': '.src.v1.testcase.MetaDataResponse', '10': 'metadata'},
  ],
};

/// Descriptor for `GetResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getResponseDescriptor = $convert.base64Decode(
    'CgtHZXRSZXNwb25zZRIWCgZzdGF0dXMYASABKAlSBnN0YXR1cxIxCgRkYXRhGAIgAygLMh0uc3'
    'JjLnYxLnRlc3RjYXNlLkRhdGFSZXNwb25zZVIEZGF0YRI9CghtZXRhZGF0YRgDIAEoCzIhLnNy'
    'Yy52MS50ZXN0Y2FzZS5NZXRhRGF0YVJlc3BvbnNlUghtZXRhZGF0YQ==');

@$core.Deprecated('Use metaDataResponseDescriptor instead')
const MetaDataResponse$json = {
  '1': 'MetaDataResponse',
  '2': [
    {'1': 'current_page', '3': 1, '4': 1, '5': 13, '10': 'currentPage'},
    {'1': 'per_page', '3': 2, '4': 1, '5': 13, '10': 'perPage'},
    {'1': 'total', '3': 3, '4': 1, '5': 13, '10': 'total'},
    {'1': 'last_page', '3': 4, '4': 1, '5': 13, '10': 'lastPage'},
  ],
};

/// Descriptor for `MetaDataResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List metaDataResponseDescriptor = $convert.base64Decode(
    'ChBNZXRhRGF0YVJlc3BvbnNlEiEKDGN1cnJlbnRfcGFnZRgBIAEoDVILY3VycmVudFBhZ2USGQ'
    'oIcGVyX3BhZ2UYAiABKA1SB3BlclBhZ2USFAoFdG90YWwYAyABKA1SBXRvdGFsEhsKCWxhc3Rf'
    'cGFnZRgEIAEoDVIIbGFzdFBhZ2U=');

@$core.Deprecated('Use dataResponseDescriptor instead')
const DataResponse$json = {
  '1': 'DataResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'desc', '3': 3, '4': 1, '5': 9, '10': 'desc'},
    {'1': 'file', '3': 4, '4': 1, '5': 9, '10': 'file'},
    {'1': 'tags', '3': 5, '4': 3, '5': 11, '6': '.src.v1.testcase.Tag', '10': 'tags'},
    {'1': 'creator', '3': 6, '4': 1, '5': 9, '10': 'creator'},
    {'1': 'last_execute_date', '3': 7, '4': 1, '5': 9, '10': 'lastExecuteDate'},
    {'1': 'last_execute_result', '3': 8, '4': 1, '5': 9, '10': 'lastExecuteResult'},
  ],
};

/// Descriptor for `DataResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dataResponseDescriptor = $convert.base64Decode(
    'CgxEYXRhUmVzcG9uc2USDgoCaWQYASABKA1SAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSEgoEZG'
    'VzYxgDIAEoCVIEZGVzYxISCgRmaWxlGAQgASgJUgRmaWxlEigKBHRhZ3MYBSADKAsyFC5zcmMu'
    'djEudGVzdGNhc2UuVGFnUgR0YWdzEhgKB2NyZWF0b3IYBiABKAlSB2NyZWF0b3ISKgoRbGFzdF'
    '9leGVjdXRlX2RhdGUYByABKAlSD2xhc3RFeGVjdXRlRGF0ZRIuChNsYXN0X2V4ZWN1dGVfcmVz'
    'dWx0GAggASgJUhFsYXN0RXhlY3V0ZVJlc3VsdA==');

@$core.Deprecated('Use tagDescriptor instead')
const Tag$json = {
  '1': 'Tag',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'color', '3': 2, '4': 1, '5': 9, '10': 'color'},
  ],
};

/// Descriptor for `Tag`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tagDescriptor = $convert.base64Decode(
    'CgNUYWcSEgoEbmFtZRgBIAEoCVIEbmFtZRIUCgVjb2xvchgCIAEoCVIFY29sb3I=');

@$core.Deprecated('Use createRequestDescriptor instead')
const CreateRequest$json = {
  '1': 'CreateRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'desc', '3': 2, '4': 1, '5': 9, '10': 'desc'},
    {'1': 'file', '3': 3, '4': 1, '5': 9, '10': 'file'},
    {'1': 'tag_ids', '3': 4, '4': 3, '5': 13, '10': 'tagIds'},
  ],
};

/// Descriptor for `CreateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createRequestDescriptor = $convert.base64Decode(
    'Cg1DcmVhdGVSZXF1ZXN0EhIKBG5hbWUYASABKAlSBG5hbWUSEgoEZGVzYxgCIAEoCVIEZGVzYx'
    'ISCgRmaWxlGAMgASgJUgRmaWxlEhcKB3RhZ19pZHMYBCADKA1SBnRhZ0lkcw==');

@$core.Deprecated('Use createResponseDescriptor instead')
const CreateResponse$json = {
  '1': 'CreateResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `CreateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createResponseDescriptor = $convert.base64Decode(
    'Cg5DcmVhdGVSZXNwb25zZRIWCgZzdGF0dXMYASABKAlSBnN0YXR1cxIYCgdtZXNzYWdlGAIgAS'
    'gJUgdtZXNzYWdl');

@$core.Deprecated('Use updateRequestDescriptor instead')
const UpdateRequest$json = {
  '1': 'UpdateRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'desc', '3': 3, '4': 1, '5': 9, '10': 'desc'},
    {'1': 'file', '3': 4, '4': 1, '5': 9, '10': 'file'},
    {'1': 'tag_ids', '3': 5, '4': 3, '5': 13, '10': 'tagIds'},
  ],
};

/// Descriptor for `UpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateRequestDescriptor = $convert.base64Decode(
    'Cg1VcGRhdGVSZXF1ZXN0Eg4KAmlkGAEgASgNUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhIKBG'
    'Rlc2MYAyABKAlSBGRlc2MSEgoEZmlsZRgEIAEoCVIEZmlsZRIXCgd0YWdfaWRzGAUgAygNUgZ0'
    'YWdJZHM=');

@$core.Deprecated('Use updateResponseDescriptor instead')
const UpdateResponse$json = {
  '1': 'UpdateResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `UpdateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateResponseDescriptor = $convert.base64Decode(
    'Cg5VcGRhdGVSZXNwb25zZRIWCgZzdGF0dXMYASABKAlSBnN0YXR1cxIYCgdtZXNzYWdlGAIgAS'
    'gJUgdtZXNzYWdl');

@$core.Deprecated('Use deleteRequestDescriptor instead')
const DeleteRequest$json = {
  '1': 'DeleteRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
  ],
};

/// Descriptor for `DeleteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteRequestDescriptor = $convert.base64Decode(
    'Cg1EZWxldGVSZXF1ZXN0Eg4KAmlkGAEgASgNUgJpZA==');

@$core.Deprecated('Use deleteResponseDescriptor instead')
const DeleteResponse$json = {
  '1': 'DeleteResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `DeleteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteResponseDescriptor = $convert.base64Decode(
    'Cg5EZWxldGVSZXNwb25zZRIWCgZzdGF0dXMYASABKAlSBnN0YXR1cxIYCgdtZXNzYWdlGAIgAS'
    'gJUgdtZXNzYWdl');

@$core.Deprecated('Use runRequestDescriptor instead')
const RunRequest$json = {
  '1': 'RunRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
  ],
};

/// Descriptor for `RunRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List runRequestDescriptor = $convert.base64Decode(
    'CgpSdW5SZXF1ZXN0Eg4KAmlkGAEgASgNUgJpZA==');

@$core.Deprecated('Use runResponseDescriptor instead')
const RunResponse$json = {
  '1': 'RunResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `RunResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List runResponseDescriptor = $convert.base64Decode(
    'CgtSdW5SZXNwb25zZRIWCgZzdGF0dXMYASABKAlSBnN0YXR1cxIYCgdtZXNzYWdlGAIgASgJUg'
    'dtZXNzYWdl');

@$core.Deprecated('Use viewRequestDescriptor instead')
const ViewRequest$json = {
  '1': 'ViewRequest',
  '2': [
    {'1': 'path', '3': 1, '4': 1, '5': 9, '10': 'path'},
  ],
};

/// Descriptor for `ViewRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List viewRequestDescriptor = $convert.base64Decode(
    'CgtWaWV3UmVxdWVzdBISCgRwYXRoGAEgASgJUgRwYXRo');

@$core.Deprecated('Use viewResponseDescriptor instead')
const ViewResponse$json = {
  '1': 'ViewResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    {'1': 'classname', '3': 3, '4': 1, '5': 9, '10': 'classname'},
    {'1': 'path', '3': 4, '4': 1, '5': 9, '10': 'path'},
    {'1': 'functions', '3': 5, '4': 3, '5': 11, '6': '.src.v1.testcase.DefFunction', '10': 'functions'},
  ],
};

/// Descriptor for `ViewResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List viewResponseDescriptor = $convert.base64Decode(
    'CgxWaWV3UmVzcG9uc2USFgoGc3RhdHVzGAEgASgJUgZzdGF0dXMSGAoHbWVzc2FnZRgCIAEoCV'
    'IHbWVzc2FnZRIcCgljbGFzc25hbWUYAyABKAlSCWNsYXNzbmFtZRISCgRwYXRoGAQgASgJUgRw'
    'YXRoEjoKCWZ1bmN0aW9ucxgFIAMoCzIcLnNyYy52MS50ZXN0Y2FzZS5EZWZGdW5jdGlvblIJZn'
    'VuY3Rpb25z');

@$core.Deprecated('Use defFunctionDescriptor instead')
const DefFunction$json = {
  '1': 'DefFunction',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'comment', '3': 2, '4': 1, '5': 9, '10': 'comment'},
  ],
};

/// Descriptor for `DefFunction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List defFunctionDescriptor = $convert.base64Decode(
    'CgtEZWZGdW5jdGlvbhISCgRuYW1lGAEgASgJUgRuYW1lEhgKB2NvbW1lbnQYAiABKAlSB2NvbW'
    '1lbnQ=');

