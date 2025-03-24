import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getBuildVersion] action in LoginPage widget.
  String? getBuildVersion;
  // Stores action output result for [Custom Action - getDeviceIdAction] action in LoginPage widget.
  String? getDeviceIdOutput;
  // State field(s) for username widget.
  FocusNode? usernameFocusNode;
  TextEditingController? usernameTextController;
  String? Function(BuildContext, String?)? usernameTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // Stores action output result for [Custom Action - backgroundLocationCheck] action in Button widget.
  bool? backgroundLocationCheck;
  // Stores action output result for [Custom Action - backgroundLocationPermission] action in Button widget.
  bool? permissionRequestOutput;
  // Stores action output result for [Custom Action - checkGpsServiceEnable] action in Button widget.
  bool? checkGpsEnable;
  // Stores action output result for [Custom Action - checkGpsServiceEnable] action in Button widget.
  bool? checkGpsEnable2;
  // Stores action output result for [Custom Action - checkFirebase] action in Button widget.
  String? customFirebaseAuthen;
  // Stores action output result for [Custom Action - checkUserFirebase] action in Button widget.
  String? userUID;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  UserCustomRecord? createdUserCustom;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    usernameFocusNode?.dispose();
    usernameTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
  }
}
