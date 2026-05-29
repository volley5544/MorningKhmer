import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'pin_login_page_widget.dart' show PinLoginPageWidget;
import 'package:flutter/material.dart';

class PinLoginPageModel extends FlutterFlowModel<PinLoginPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getBuildVersion] action in PinLoginPage widget.
  String? getBuildVersion;
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Custom Action - backgroundLocationCheck] action in PinCode widget.
  bool? backgroundLocationCheck;
  // Stores action output result for [Custom Action - backgroundLocationPermission] action in PinCode widget.
  bool? permissionRequestOutput;
  // Stores action output result for [Custom Action - checkGpsServiceEnable] action in PinCode widget.
  bool? checkGpsEnable;
  // Stores action output result for [Custom Action - checkGpsServiceEnable] action in PinCode widget.
  bool? checkGpsEnable2;
  // Stores action output result for [Backend Call - API (profile)] action in PinCode widget.
  ApiCallResponse? getprofileAPI;
  // Stores action output result for [Action Block - CheckStatusAPI] action in PinCode widget.
  String? checkStatusProfile;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();
  }
}
