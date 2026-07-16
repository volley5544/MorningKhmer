import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'leave_show_page_widget.dart' show LeaveShowPageWidget;
import 'package:flutter/material.dart';

class LeaveShowPageModel extends FlutterFlowModel<LeaveShowPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for yearSelect widget.
  String? yearSelectValue;
  FormFieldController<String>? yearSelectValueController;
  // State field(s) for monthSelect widget.
  String? monthSelectValue;
  FormFieldController<String>? monthSelectValueController;
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
    tabBarController?.dispose();
  }
}
