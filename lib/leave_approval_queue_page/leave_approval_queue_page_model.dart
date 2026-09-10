import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/leave_status_badge_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'leave_approval_queue_page_widget.dart'
    show LeaveApprovalQueuePageWidget;
import 'package:flutter/material.dart';

class LeaveApprovalQueuePageModel
    extends FlutterFlowModel<LeaveApprovalQueuePageWidget> {
  ///  Local state fields for this page.

  List<LeaveApprovalRowStruct> pending = [];
  void addToPending(LeaveApprovalRowStruct item) => pending.add(item);
  void removeFromPending(LeaveApprovalRowStruct item) => pending.remove(item);
  void removeAtIndexFromPending(int index) => pending.removeAt(index);
  void insertAtIndexInPending(int index, LeaveApprovalRowStruct item) =>
      pending.insert(index, item);
  void updatePendingAtIndex(
          int index, Function(LeaveApprovalRowStruct) updateFn) =>
      pending[index] = updateFn(pending[index]);

  List<String> allLeaveIds = [];
  void addToAllLeaveIds(String item) => allLeaveIds.add(item);
  void removeFromAllLeaveIds(String item) => allLeaveIds.remove(item);
  void removeAtIndexFromAllLeaveIds(int index) => allLeaveIds.removeAt(index);
  void insertAtIndexInAllLeaveIds(int index, String item) =>
      allLeaveIds.insert(index, item);
  void updateAllLeaveIdsAtIndex(int index, Function(String) updateFn) =>
      allLeaveIds[index] = updateFn(allLeaveIds[index]);

  String? decisionId = '';

  String? decisionScope = 'one';

  String? decisionStatus = 'approve';

  String? decisionTitle = '';

  String? decisionReason = '';

  bool? showDecision = false;

  bool? loading = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (leaveGetListApprove)] action in LeaveApprovalQueuePage widget.
  ApiCallResponse? approveRes;
  // State field(s) for decisionReasonField widget.
  FocusNode? decisionReasonFieldFocusNode;
  TextEditingController? decisionReasonFieldTextController;
  String? Function(BuildContext, String?)?
      decisionReasonFieldTextControllerValidator;
  // Stores action output result for [Backend Call - API (leaveSaveStatus)] action in decisionConfirmButton widget.
  ApiCallResponse? bulkDecisionRes;
  // Stores action output result for [Backend Call - API (leaveSaveStatus)] action in decisionConfirmButton widget.
  ApiCallResponse? decisionRes;
  // Models for LeaveStatusBadge.
  late FlutterFlowDynamicModels<LeaveStatusBadgeModel> leaveStatusBadgeModels;

  @override
  void initState(BuildContext context) {
    leaveStatusBadgeModels =
        FlutterFlowDynamicModels(() => LeaveStatusBadgeModel());
  }

  @override
  void dispose() {
    decisionReasonFieldFocusNode?.dispose();
    decisionReasonFieldTextController?.dispose();

    leaveStatusBadgeModels.dispose();
  }
}
