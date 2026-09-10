import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/leave_status_badge_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'my_leave_requests_page_widget.dart' show MyLeaveRequestsPageWidget;
import 'package:flutter/material.dart';

class MyLeaveRequestsPageModel
    extends FlutterFlowModel<MyLeaveRequestsPageWidget> {
  ///  Local state fields for this page.

  LeaveHistoryResultsStruct? historyResults;
  void updateHistoryResultsStruct(
      Function(LeaveHistoryResultsStruct) updateFn) {
    updateFn(historyResults ??= LeaveHistoryResultsStruct());
  }

  List<LeaveHistoryMonthStruct> months = [];
  void addToMonths(LeaveHistoryMonthStruct item) => months.add(item);
  void removeFromMonths(LeaveHistoryMonthStruct item) => months.remove(item);
  void removeAtIndexFromMonths(int index) => months.removeAt(index);
  void insertAtIndexInMonths(int index, LeaveHistoryMonthStruct item) =>
      months.insert(index, item);
  void updateMonthsAtIndex(
          int index, Function(LeaveHistoryMonthStruct) updateFn) =>
      months[index] = updateFn(months[index]);

  String? yearBucket = 'This year';

  String? cancelId = '';

  String? cancelName = '';

  String? cancelReason = '';

  bool? showCancel = false;

  bool? loading = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (leaveHistory)] action in MyLeaveRequestsPage widget.
  ApiCallResponse? historyRes;
  // State field(s) for historyYearField widget.
  String? historyYearFieldValue;
  FormFieldController<String>? historyYearFieldValueController;
  // State field(s) for cancelReasonField widget.
  FocusNode? cancelReasonFieldFocusNode;
  TextEditingController? cancelReasonFieldTextController;
  String? Function(BuildContext, String?)?
      cancelReasonFieldTextControllerValidator;
  // Stores action output result for [Backend Call - API (leaveSaveStatus)] action in confirmCancelLeaveButton widget.
  ApiCallResponse? cancelRes;
  // Models for LeaveStatusBadge.
  late FlutterFlowDynamicModels<LeaveStatusBadgeModel> leaveStatusBadgeModels;

  @override
  void initState(BuildContext context) {
    leaveStatusBadgeModels =
        FlutterFlowDynamicModels(() => LeaveStatusBadgeModel());
  }

  @override
  void dispose() {
    cancelReasonFieldFocusNode?.dispose();
    cancelReasonFieldTextController?.dispose();

    leaveStatusBadgeModels.dispose();
  }
}
