import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'leave_approval_history_page_widget.dart'
    show LeaveApprovalHistoryPageWidget;
import 'package:flutter/material.dart';

class LeaveApprovalHistoryPageModel
    extends FlutterFlowModel<LeaveApprovalHistoryPageWidget> {
  ///  Local state fields for this page.

  LeaveAllResultsStruct? allResults;
  void updateAllResultsStruct(Function(LeaveAllResultsStruct) updateFn) {
    updateFn(allResults ??= LeaveAllResultsStruct());
  }

  List<LeaveAllMonthStruct> approved = [];
  void addToApproved(LeaveAllMonthStruct item) => approved.add(item);
  void removeFromApproved(LeaveAllMonthStruct item) => approved.remove(item);
  void removeAtIndexFromApproved(int index) => approved.removeAt(index);
  void insertAtIndexInApproved(int index, LeaveAllMonthStruct item) =>
      approved.insert(index, item);
  void updateApprovedAtIndex(
          int index, Function(LeaveAllMonthStruct) updateFn) =>
      approved[index] = updateFn(approved[index]);

  List<LeaveAllMonthStruct> notApproved = [];
  void addToNotApproved(LeaveAllMonthStruct item) => notApproved.add(item);
  void removeFromNotApproved(LeaveAllMonthStruct item) =>
      notApproved.remove(item);
  void removeAtIndexFromNotApproved(int index) => notApproved.removeAt(index);
  void insertAtIndexInNotApproved(int index, LeaveAllMonthStruct item) =>
      notApproved.insert(index, item);
  void updateNotApprovedAtIndex(
          int index, Function(LeaveAllMonthStruct) updateFn) =>
      notApproved[index] = updateFn(notApproved[index]);

  List<LeaveAllMonthStruct> cancelled = [];
  void addToCancelled(LeaveAllMonthStruct item) => cancelled.add(item);
  void removeFromCancelled(LeaveAllMonthStruct item) => cancelled.remove(item);
  void removeAtIndexFromCancelled(int index) => cancelled.removeAt(index);
  void insertAtIndexInCancelled(int index, LeaveAllMonthStruct item) =>
      cancelled.insert(index, item);
  void updateCancelledAtIndex(
          int index, Function(LeaveAllMonthStruct) updateFn) =>
      cancelled[index] = updateFn(cancelled[index]);

  String? yearBucket = 'This year';

  bool? loading = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (leaveGetAllLeave)] action in LeaveApprovalHistoryPage widget.
  ApiCallResponse? allLeaveRes;
  // State field(s) for decisionYearField widget.
  String? decisionYearFieldValue;
  FormFieldController<String>? decisionYearFieldValueController;
  // State field(s) for decisionTabs widget.
  TabController? decisionTabsController;
  int get decisionTabsCurrentIndex =>
      decisionTabsController != null ? decisionTabsController!.index : 0;
  int get decisionTabsPreviousIndex => decisionTabsController != null
      ? decisionTabsController!.previousIndex
      : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    decisionTabsController?.dispose();
  }
}
