import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/leave_balance_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'leave_balance_page_widget.dart' show LeaveBalancePageWidget;
import 'package:flutter/material.dart';

class LeaveBalancePageModel extends FlutterFlowModel<LeaveBalancePageWidget> {
  ///  Local state fields for this page.

  List<LeaveTypeBalanceStruct> leaveTypes = [];
  void addToLeaveTypes(LeaveTypeBalanceStruct item) => leaveTypes.add(item);
  void removeFromLeaveTypes(LeaveTypeBalanceStruct item) =>
      leaveTypes.remove(item);
  void removeAtIndexFromLeaveTypes(int index) => leaveTypes.removeAt(index);
  void insertAtIndexInLeaveTypes(int index, LeaveTypeBalanceStruct item) =>
      leaveTypes.insert(index, item);
  void updateLeaveTypesAtIndex(
          int index, Function(LeaveTypeBalanceStruct) updateFn) =>
      leaveTypes[index] = updateFn(leaveTypes[index]);

  bool? loading = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (leaveGetList)] action in LeaveBalancePage widget.
  ApiCallResponse? balanceRes;
  // Models for LeaveBalanceCard.
  late FlutterFlowDynamicModels<LeaveBalanceCardModel> leaveBalanceCardModels;

  @override
  void initState(BuildContext context) {
    leaveBalanceCardModels =
        FlutterFlowDynamicModels(() => LeaveBalanceCardModel());
  }

  @override
  void dispose() {
    leaveBalanceCardModels.dispose();
  }
}
