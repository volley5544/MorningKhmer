import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'checkin_status_page_widget.dart' show CheckinStatusPageWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class CheckinStatusPageModel extends FlutterFlowModel<CheckinStatusPageWidget> {
  ///  Local state fields for this page.

  List<CheckinHistoryDataModelStruct> historyLastmonth = [];
  void addToHistoryLastmonth(CheckinHistoryDataModelStruct item) =>
      historyLastmonth.add(item);
  void removeFromHistoryLastmonth(CheckinHistoryDataModelStruct item) =>
      historyLastmonth.remove(item);
  void removeAtIndexFromHistoryLastmonth(int index) =>
      historyLastmonth.removeAt(index);
  void insertAtIndexInHistoryLastmonth(
          int index, CheckinHistoryDataModelStruct item) =>
      historyLastmonth.insert(index, item);
  void updateHistoryLastmonthAtIndex(
          int index, Function(CheckinHistoryDataModelStruct) updateFn) =>
      historyLastmonth[index] = updateFn(historyLastmonth[index]);

  List<CheckinHistoryDataModelStruct> historyCurrentmonth = [];
  void addToHistoryCurrentmonth(CheckinHistoryDataModelStruct item) =>
      historyCurrentmonth.add(item);
  void removeFromHistoryCurrentmonth(CheckinHistoryDataModelStruct item) =>
      historyCurrentmonth.remove(item);
  void removeAtIndexFromHistoryCurrentmonth(int index) =>
      historyCurrentmonth.removeAt(index);
  void insertAtIndexInHistoryCurrentmonth(
          int index, CheckinHistoryDataModelStruct item) =>
      historyCurrentmonth.insert(index, item);
  void updateHistoryCurrentmonthAtIndex(
          int index, Function(CheckinHistoryDataModelStruct) updateFn) =>
      historyCurrentmonth[index] = updateFn(historyCurrentmonth[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (history)] action in CheckinStatusPage widget.
  ApiCallResponse? apiResulthaj;
  // Stores action output result for [Action Block - CheckStatusAPI] action in CheckinStatusPage widget.
  String? checkstatusHistory;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
    tabBarController?.dispose();
  }
}
