import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class LogindriverCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'logindriver',
      apiUrl: 'https://stmik-banksampah.neumediradev.my.id/api/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? emaildriver(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.email''',
      ));
  static String? roledriver(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.role''',
      ));
  static String? drivertoken(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.access_token''',
      ));
}

class DashboarddriverCall {
  static Future<ApiCallResponse> call({
    String? authtoken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'dashboarddriver',
      apiUrl:
          'https://stmik-banksampah.neumediradev.my.id/api/driver/schedules',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authtoken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? namedriver(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.user.name''',
      ));
  static String? emaildriver(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.user.email''',
      ));
  static String? addressdriver(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.user.address''',
      ));
  static String? phonedriver(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.user.phone''',
      ));
  static String? roledriver(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.user.role''',
      ));
  static List? datadriver(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  static List<int>? idschedule(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? numberorder(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].number_order''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? pickupdate(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].pickup_date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? pickuptime(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].pickup_time''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? status(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? customername(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].customer''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class LogoutdriverCall {
  static Future<ApiCallResponse> call({
    String? authtoken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'logoutdriver',
      apiUrl: 'https://stmik-banksampah.neumediradev.my.id/api/logout',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authtoken',
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ShowscheduleCall {
  static Future<ApiCallResponse> call({
    String? showscheduletoken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'showschedule',
      apiUrl:
          'https://stmik-banksampah.neumediradev.my.id/api/driver/schedules/13',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $showscheduletoken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data[:].id''',
      ));
  static int? idcustomer(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data[:].user_id_customer''',
      ));
  static String? numberorder(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data[:].number_order''',
      ));
  static String? pickupdate(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data[:].pickup_date''',
      ));
  static String? pickuptime(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data[:].pickup_time''',
      ));
  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].status''',
      ));
  static String? customer(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].customer''',
      ));
  static String? address(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].address''',
      ));
}

class HistoryCall {
  static Future<ApiCallResponse> call({
    String? history = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'history',
      apiUrl:
          'https://stmik-banksampah.neumediradev.my.id/api/driver/schedules/history',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $history',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class HistorydetailCall {
  static Future<ApiCallResponse> call({
    String? historydetail = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'historydetail',
      apiUrl:
          'https://stmik-banksampah.neumediradev.my.id/api/driver/schedules/history/1',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $historydetail',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
