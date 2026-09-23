import '/auth/custom_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'leave_webview_page_model.dart';
export 'leave_webview_page_model.dart';

/// Hosts the Morning Khmer leave web app.
class LeaveWebviewPageWidget extends StatefulWidget {
  const LeaveWebviewPageWidget({
    super.key,
    this.webUrl,
  });

  final String? webUrl;

  static String routeName = 'LeaveWebviewPage';
  static String routePath = '/leave-webview';

  @override
  State<LeaveWebviewPageWidget> createState() => _LeaveWebviewPageWidgetState();
}

class _LeaveWebviewPageWidgetState extends State<LeaveWebviewPageWidget> {
  late LeaveWebviewPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LeaveWebviewPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            child: custom_widgets.LeaveWebView(
              apiBaseUrl: FFAppState().urlStorageData.baseUrl,
              branchName: FFAppState().profileAppState.branchName,
              employeeId: FFAppState().profileAppState.empCode,
              fullName: FFAppState().profileAppState.fullName,
              headOfWork: FFAppState().profileAppState.headOfWork,
              language: 'en',
              nickName: FFAppState().profileAppState.nickName,
              phone: FFAppState().profileAppState.mobileNumber,
              position: FFAppState().profileAppState.positionName,
              token: currentAuthenticationToken,
              webUrl: widget.webUrl,
            ),
          ),
        ),
      ),
    );
  }
}
