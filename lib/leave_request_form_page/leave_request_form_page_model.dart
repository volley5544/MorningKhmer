import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'leave_request_form_page_widget.dart' show LeaveRequestFormPageWidget;
import 'package:flutter/material.dart';

class LeaveRequestFormPageModel
    extends FlutterFlowModel<LeaveRequestFormPageWidget> {
  ///  Local state fields for this page.

  String? period = 'full';

  DateTime? startDate;

  DateTime? endDate;

  String? countDay = '1';

  String? reason = '';

  String? phone = '';

  bool? saving = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for periodField widget.
  String? periodFieldValue;
  FormFieldController<String>? periodFieldValueController;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for phoneField widget.
  FocusNode? phoneFieldFocusNode;
  TextEditingController? phoneFieldTextController;
  String? Function(BuildContext, String?)? phoneFieldTextControllerValidator;
  // State field(s) for reasonField widget.
  FocusNode? reasonFieldFocusNode;
  TextEditingController? reasonFieldTextController;
  String? Function(BuildContext, String?)? reasonFieldTextControllerValidator;
  // Stores action output result for [Backend Call - API (leaveSave)] action in submitLeaveButton widget.
  ApiCallResponse? saveRes;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    phoneFieldFocusNode?.dispose();
    phoneFieldTextController?.dispose();

    reasonFieldFocusNode?.dispose();
    reasonFieldTextController?.dispose();
  }
}
