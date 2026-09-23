import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/custom_auth/auth_util.dart';

bool? checkPin(String? input) {
  if (input!.length != 6) {
    return false;
  } else {
    if (int.tryParse(input!) != null) {
      return true;
    } else {
      return false;
    }
  }
}

String? getBuildNumber(String? buildVersion) {
  // Find the index of the opening parenthesis
  int startIndex = buildVersion!.indexOf('(');

  // Find the index of the closing parenthesis
  int endIndex = buildVersion!.indexOf(')');

  // Extract the substring between the parentheses
  String numberString = buildVersion!.substring(startIndex + 1, endIndex);

  // Convert the extracted substring to an integer

  print(numberString); // Output: 21

  return numberString;
}

double? getLatitude(LatLng? location) {
  if (location == null) return null;

  return location.latitude;
}

double? getLongitude(LatLng? location) {
  if (location == null) return null;

  return location.longitude;
}

bool? isContainString(
  String? input,
  String? containText,
) {
  return containText!.contains(input!);
}

int? getIndexOfSomethingList(
  List<String>? list,
  String? input,
) {
  return list!.indexOf(input!);
}

LatLng? combineLatLng(
  String? lat,
  String? lng,
) {
  return LatLng(double.parse(lat!), double.parse(lng!));
}

String? stringToImagePath(String? input) {
  return input!;
}

/// Turns the /api/leave/get-list leave_list value into a
/// List<LeaveTypeBalance>.
///
/// The backend sends leave_list either as an object keyed by leave-type id or
/// as a plain array of the same per-type objects, inconsistently across
/// accounts — this accepts either shape. For direct use in the leaveTypes
/// Update App State action.
List<LeaveTypeBalanceStruct>? leaveListValuesToBalanceList(
    dynamic leaveListJson) {
  final Iterable<dynamic> values;
  if (leaveListJson is Map) {
    values = leaveListJson.values;
  } else if (leaveListJson is List) {
    values = leaveListJson;
  } else {
    return const [];
  }
  return values
      .whereType<Map>()
      .map((v) => LeaveTypeBalanceStruct.fromMap(v.cast<String, dynamic>()))
      .toList();
}

/// TEMPORARY debug helper — renders the /api/leave/get-list response (code,
/// message, and the raw leave_list value) as readable text for the diagnostic
/// response dialog.
///
/// Safe to remove once the LeaveBalancePage empty-list issue is resolved.
String? debugSummarizeLeaveResponse(
  String? code,
  String? message,
  dynamic leaveList,
) {
  final buffer = StringBuffer();
  buffer.writeln('code: $code');
  buffer.writeln('message: $message');
  buffer.writeln('');
  buffer.writeln('leave_list:');
  try {
    buffer.writeln(const JsonEncoder.withIndent('  ').convert(leaveList));
  } catch (_) {
    buffer.writeln(leaveList.toString());
  }
  return buffer.toString();
}

/// Formats a DateTime as yyyy-MM-dd.
///
/// The /api/leave/save backend requires plain Y-m-d and rejects the
/// space-separated datetime DateTime.toString() would otherwise produce.
/// Returns "" for anything that is not a DateTime (including null, so an
/// unpicked date fails validation server-side rather than crashing
/// client-side).
String? formatDateYmd(dynamic date) {
  if (date is! DateTime) return '';
  final y = date.year.toString().padLeft(4, '0');
  final m = date.month.toString().padLeft(2, '0');
  final d = date.day.toString().padLeft(2, '0');
  return '$y-$m-$d';
}
