import 'dart:convert';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Auth Group Code

class AuthGroup {
  static String getBaseUrl({
    String? url = '',
    String? language = '',
  }) =>
      '${url}';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Accept-Language': '[language]',
  };
  static LoginCall loginCall = LoginCall();
  static ProfileCall profileCall = ProfileCall();
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? username = '',
    String? password = '',
    String? projectName = '',
    String? url = '',
    String? language = '',
  }) async {
    final baseUrl = AuthGroup.getBaseUrl(
      url: url,
      language: language,
    );

    final ffApiRequestBody = '''
{
  "username": "${escapeStringForJson(username)}",
  "password": "${escapeStringForJson(password)}",
  "project_name": "${escapeStringForJson(projectName)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl: '${baseUrl}/api/login',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Accept-Language': '${language}',
      },
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

  UserStruct? userData(dynamic response) =>
      UserStruct.maybeFromMap(getJsonField(
        response,
        r'''$.user''',
      ));
}

class ProfileCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? url = '',
    String? language = '',
  }) async {
    final baseUrl = AuthGroup.getBaseUrl(
      url: url,
      language: language,
    );

    final ffApiRequestBody = '''
{
  "token": "${escapeStringForJson(token)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'profile',
      apiUrl: '${baseUrl}/api/user-profile',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Accept-Language': '${language}',
        'Authorization': 'Bearer ${token}',
      },
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

  ProfileDataModelStruct? results(dynamic response) =>
      ProfileDataModelStruct.maybeFromMap(getJsonField(
        response,
        r'''$.results''',
      ));
}

/// End Auth Group Code

/// Start check in Group Code

class CheckInGroup {
  static String getBaseUrl({
    String? url = '',
    String? token = '',
    String? language = '',
  }) =>
      '${url}';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer [token]',
    'Accept-Language': '[language]',
  };
  static LocationListCall locationListCall = LocationListCall();
  static WorkCheckCall workCheckCall = WorkCheckCall();
  static HistoryCall historyCall = HistoryCall();
}

class LocationListCall {
  Future<ApiCallResponse> call({
    String? url = '',
    String? token = '',
    String? language = '',
  }) async {
    final baseUrl = CheckInGroup.getBaseUrl(
      url: url,
      token: token,
      language: language,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'location list',
      apiUrl: '${baseUrl}/api/location/list',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
        'Accept-Language': '${language}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  LocationDataModelStruct? results(dynamic response) =>
      LocationDataModelStruct.maybeFromMap(getJsonField(
        response,
        r'''$.results''',
      ));
}

class WorkCheckCall {
  Future<ApiCallResponse> call({
    String? latitude = '',
    String? longitude = '',
    String? urlImg = '',
    String? branch = '',
    String? remark = '',
    String? url = '',
    String? token = '',
    String? language = '',
  }) async {
    final baseUrl = CheckInGroup.getBaseUrl(
      url: url,
      token: token,
      language: language,
    );

    final ffApiRequestBody = '''
{
  "latitude": "${escapeStringForJson(latitude)}",
  "longitude": "${escapeStringForJson(longitude)}",
  "url_img": "${escapeStringForJson(urlImg)}",
  "branch": "${escapeStringForJson(branch)}",
  "remark": "${escapeStringForJson(remark)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'work check',
      apiUrl: '${baseUrl}/api/check-in/work-check',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
        'Accept-Language': '${language}',
      },
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

  int? code(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.code''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class HistoryCall {
  Future<ApiCallResponse> call({
    String? url = '',
    String? token = '',
    String? language = '',
  }) async {
    final baseUrl = CheckInGroup.getBaseUrl(
      url: url,
      token: token,
      language: language,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'history',
      apiUrl: '${baseUrl}/api/check-in/work-check-history',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
        'Accept-Language': '${language}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<CheckinHistoryDataModelStruct>? lastmonth(dynamic response) =>
      (getJsonField(
        response,
        r'''$.results.last_month[*]''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => CheckinHistoryDataModelStruct.maybeFromMap(x))
          .withoutNulls
          .toList();
  List<CheckinHistoryDataModelStruct>? currentmonth(dynamic response) =>
      (getJsonField(
        response,
        r'''$.results.current_month[*]''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => CheckinHistoryDataModelStruct.maybeFromMap(x))
          .withoutNulls
          .toList();
}

/// End check in Group Code

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
  if (item is DocumentReference) {
    return item.path;
  }
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

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
