import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

/// ถ้าผ่านส่ง empty string
Future<String?> checkStatusAPI(
  BuildContext context, {
  int? statusCode,
  dynamic responseBody,
}) async {
  if (statusCode != 200) {
    return '${statusCode?.toString()}';
  }
  if (!(('${getJsonField(
            responseBody,
            r'''$.code''',
          ).toString()}' ==
          '200') ||
      ('${getJsonField(
            responseBody,
            r'''$.status''',
          ).toString()}' ==
          '200'))) {
    return '${getJsonField(
      responseBody,
      r'''$.message''',
    ).toString()}';
  }
  return '';
}
