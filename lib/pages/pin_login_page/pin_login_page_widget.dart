import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/permissions_util.dart';
import '/index.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pin_login_page_model.dart';
export 'pin_login_page_model.dart';

class PinLoginPageWidget extends StatefulWidget {
  const PinLoginPageWidget({super.key});

  static String routeName = 'PinLoginPage';
  static String routePath = '/pinLoginPage';

  @override
  State<PinLoginPageWidget> createState() => _PinLoginPageWidgetState();
}

class _PinLoginPageWidgetState extends State<PinLoginPageWidget>
    with TickerProviderStateMixin {
  late PinLoginPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PinLoginPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setDarkModeSetting(context, ThemeMode.light);
      _model.getBuildVersion = await actions.getBuildVersion();
    });

    _model.pinCodeFocusNode ??= FocusNode();

    animationsMap.addAll({
      'imageOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 1100.0.ms,
            duration: 600.0.ms,
            begin: 1.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 1100.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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

    return FutureBuilder<AppConfigRecord>(
      future: AppConfigRecord.getDocumentOnce(FFAppState().urlStorageDocRef!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }

        final pinLoginPageAppConfigRecord = snapshot.data!;

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
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height * 1.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.white, Color(0xFFFF9E35)],
                    stops: [0.0, 1.0],
                    begin: AlignmentDirectional(0.0, -1.0),
                    end: AlignmentDirectional(0, 1.0),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 50.0,
                      decoration: BoxDecoration(),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 0.0),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30.0,
                                  borderWidth: 1.0,
                                  buttonSize: 55.0,
                                  icon: Icon(
                                    Icons.logout,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 35.0,
                                  ),
                                  onPressed: () async {
                                    GoRouter.of(context).prepareAuthEvent();
                                    await authManager.signOut();
                                    GoRouter.of(context)
                                        .clearRedirectLocation();

                                    context.goNamedAuth(
                                        LoginPageWidget.routeName,
                                        context.mounted);
                                  },
                                ),
                              ),
                              SelectionArea(
                                  child: Text(
                                FFLocalizations.of(context).getText(
                                  'z2i5fddm' /* Logout */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              )),
                            ],
                          ),
                          if (false)
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 0.0, 0.0),
                                  child: FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 30.0,
                                    borderWidth: 1.0,
                                    buttonSize: 55.0,
                                    icon: Icon(
                                      Icons.app_blocking_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 33.0,
                                    ),
                                    onPressed: () {
                                      print('IconButton pressed ...');
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 20.0, 0.0),
                                  child: SelectionArea(
                                      child: Text(
                                    FFLocalizations.of(context).getText(
                                      '8xgh3dxe' /* Clear Cache */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  )),
                                ),
                              ],
                            ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 20.0,
                      decoration: BoxDecoration(),
                    ),
                    Image.asset(
                      'assets/images/SawadKhmerLogo1.gif',
                      width: 180.0,
                      height: 180.0,
                      fit: BoxFit.fitHeight,
                    ).animateOnPageLoad(
                        animationsMap['imageOnPageLoadAnimation']!),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'tz2mjpkn' /* សូមស្វាគមន៍មកកាន់ Morning Khme... */,
                            ),
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: Colors.black,
                                  fontSize: 28.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'enk1y9d4' /* បញ្ចូល Pin ដើម្បីប្រើកម្មវិធី */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontStyle,
                                  ),
                                  color: Colors.black,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontStyle,
                                ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 200.0,
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 32.0, 12.0, 0.0),
                                  child: PinCodeTextField(
                                    autoDisposeControllers: false,
                                    appContext: context,
                                    length: 6,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          font: GoogleFonts.interTight(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontStyle,
                                        ),
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    enableActiveFill: true,
                                    autoFocus: false,
                                    focusNode: _model.pinCodeFocusNode,
                                    enablePinAutofill: true,
                                    errorTextSpace: 16.0,
                                    showCursor: false,
                                    cursorColor:
                                        FlutterFlowTheme.of(context).primary,
                                    obscureText: true,
                                    obscuringCharacter: '●',
                                    hintCharacter: '*',
                                    keyboardType: TextInputType.number,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    pinTheme: PinTheme(
                                      fieldHeight: 55.0,
                                      fieldWidth: 50.0,
                                      borderWidth: 2.0,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(12.0),
                                        bottomRight: Radius.circular(12.0),
                                        topLeft: Radius.circular(12.0),
                                        topRight: Radius.circular(12.0),
                                      ),
                                      shape: PinCodeFieldShape.box,
                                      activeColor: Colors.white,
                                      inactiveColor: Colors.white,
                                      selectedColor: Color(0x66FFFFFF),
                                    ),
                                    controller: _model.pinCodeController,
                                    onChanged: (_) {},
                                    onCompleted: (_) async {
                                      var _shouldSetState = false;
                                      if (!((String appBuildNumber,
                                              String latestBuildNumber) {
                                        return int.parse(appBuildNumber) >=
                                            int.parse(latestBuildNumber);
                                      }(
                                          functions.getBuildNumber(
                                              _model.getBuildVersion)!,
                                          (isAndroid
                                              ? pinLoginPageAppConfigRecord
                                                  .appVersion.buildNumberAndroid
                                                  .toString()
                                              : pinLoginPageAppConfigRecord
                                                  .appVersion.buildNumberIos
                                                  .toString())))) {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              content: Text(
                                                  '\'Morning Khmer\' កំណែថ្មី មានក្នុងហាងហើយ! សូមអាប់ដេតមុនពេលប្រើកម្មវិធី'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: Text('Ok'),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                        await actions.terminateAppAction();
                                        if (_shouldSetState)
                                          safeSetState(() {});
                                        return;
                                      }
                                      if (_model.pinCodeController!.text !=
                                          FFAppState().pinCode) {
                                        safeSetState(() {
                                          _model.pinCodeController?.clear();
                                        });
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              content: Text(
                                                  'កូដ PIN មិនត្រឹមត្រូវ សូមព្យាយាមម្តងទៀត។'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: Text('Ok'),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                        if (_shouldSetState)
                                          safeSetState(() {});
                                        return;
                                      }
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text(
                                                'ការប្រើប្រាស់ទីតាំង (Location)'),
                                            content: Text(
                                                'កម្មវិធី Morning Khmer ត្រូវការចូលប្រើទីតាំង (GPS) របស់អ្នក ដើម្បីកត់ត្រាម៉ោងចូល-ចេញធ្វើការ និងផ្ទៀងផ្ទាត់ថាអ្នកកំពុងស្ថិតនៅកន្លែងធ្វើការ។ ទីតាំងរបស់អ្នកនឹងត្រូវបានប្រើតែសម្រាប់គោលបំណងនេះប៉ុណ្ណោះ ហើយនឹងមិនត្រូវបានចែករំលែកទៅភាគីទីបីឡើយ។ សូមចុច \"OK\" ដើម្បីបន្ត ហើយអនុញ្ញាតការចូលប្រើទីតាំងនៅជំហានបន្ទាប់។'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: Text('OK'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                      await requestPermission(
                                          locationPermission);
                                      if (await getPermissionStatus(
                                          locationPermission)) {
                                        _model.backgroundLocationCheck =
                                            await actions
                                                .backgroundLocationCheck();
                                        _shouldSetState = true;
                                        if (!_model.backgroundLocationCheck!) {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return AlertDialog(
                                                content: Text(
                                                    'សូមជ្រើសរើស \"អនុញ្ញាតគ្រប់ពេល\" ចូលទៅកាន់ទីតាំងរបស់អ្នក ដើម្បីតាមដានការងាររបស់អ្នក។'),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext),
                                                    child: Text('Open Setting'),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        }
                                      } else {
                                        safeSetState(() {
                                          _model.pinCodeController?.clear();
                                        });
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              content: Text(
                                                  'សូមអនុញ្ញាតឱ្យចូលទៅកាន់ទីតាំងរបស់អ្នក ដើម្បីតាមដានការងាររបស់អ្នក។'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: Text('Ok'),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                        if (_shouldSetState)
                                          safeSetState(() {});
                                        return;
                                      }

                                      _model.permissionRequestOutput =
                                          await actions
                                              .backgroundLocationPermission();
                                      _shouldSetState = true;
                                      if (!_model.permissionRequestOutput!) {
                                        safeSetState(() {
                                          _model.pinCodeController?.clear();
                                        });
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              content: Text(
                                                  'សូមជ្រើសរើស \"អនុញ្ញាតគ្រប់ពេល\" ចូលទៅកាន់ទីតាំងរបស់អ្នក ដើម្បីតាមដានការងាររបស់អ្នក។'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: Text('Ok'),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                        if (_shouldSetState)
                                          safeSetState(() {});
                                        return;
                                      }
                                      _model.checkGpsEnable =
                                          await actions.checkGpsServiceEnable();
                                      _shouldSetState = true;
                                      if (!_model.checkGpsEnable!) {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              content: Text(
                                                  'សូមបើក GPS មុនពេលបន្ត។'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: Text('Ok'),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                        await actions.enableGpsService();
                                        _model.checkGpsEnable2 = await actions
                                            .checkGpsServiceEnable();
                                        _shouldSetState = true;
                                        if (!_model.checkGpsEnable2!) {
                                          safeSetState(() {
                                            _model.pinCodeController?.clear();
                                          });
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return AlertDialog(
                                                content: Text(
                                                    'សូមបើក GPS មុនពេលបន្ត។'),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext),
                                                    child: Text('Ok'),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                          if (_shouldSetState)
                                            safeSetState(() {});
                                          return;
                                        }
                                      }
                                      _model.getprofileAPI =
                                          await AuthGroup.profileCall.call(
                                        token: currentAuthenticationToken,
                                        url:
                                            FFAppState().urlStorageData.baseUrl,
                                        language: FFLocalizations.of(context)
                                            .languageCode,
                                      );

                                      _shouldSetState = true;
                                      _model.checkStatusProfile =
                                          await action_blocks.checkStatusAPI(
                                        context,
                                        statusCode:
                                            (_model.getprofileAPI?.statusCode ??
                                                200),
                                        responseBody:
                                            (_model.getprofileAPI?.jsonBody ??
                                                ''),
                                      );
                                      _shouldSetState = true;
                                      if (_model.checkStatusProfile != null &&
                                          _model.checkStatusProfile != '') {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              content: Text(
                                                  _model.checkStatusProfile!),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: Text('Ok'),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                        if (_shouldSetState)
                                          safeSetState(() {});
                                        return;
                                      }
                                      FFAppState().fromPinPage = true;
                                      FFAppState().profileAppState =
                                          AuthGroup.profileCall.results(
                                        (_model.getprofileAPI?.jsonBody ?? ''),
                                      )!;
                                      safeSetState(() {});

                                      context.goNamed(
                                          SuperAppPageWidget.routeName);

                                      if (_shouldSetState) safeSetState(() {});
                                    },
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    validator: _model.pinCodeControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
