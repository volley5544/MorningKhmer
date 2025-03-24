import '/backend/backend.dart';
import '/components/loading_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/permissions_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'login_page_model.dart';
export 'login_page_model.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({super.key});

  static String routeName = 'LoginPage';
  static String routePath = '/loginPage';

  @override
  State<LoginPageWidget> createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget>
    with TickerProviderStateMixin {
  late LoginPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        enableDrag: false,
        context: context,
        builder: (context) {
          return GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: Padding(
              padding: MediaQuery.viewInsetsOf(context),
              child: Container(
                height: double.infinity,
                child: LoadingWidget(),
              ),
            ),
          );
        },
      ).then((value) => safeSetState(() {}));

      setDarkModeSetting(context, ThemeMode.light);
      _model.getBuildVersion = await actions.getBuildVersion();
      _model.getDeviceIdOutput = await actions.getDeviceIdAction();
      Navigator.pop(context);
    });

    _model.usernameTextController ??= TextEditingController();
    _model.usernameFocusNode ??= FocusNode();

    _model.passwordTextController ??= TextEditingController();
    _model.passwordFocusNode ??= FocusNode();

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 500.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 100.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 500.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 500.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'imageOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 300.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 500.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 400.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 400.0.ms,
            duration: 500.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 700.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 700.0.ms,
            duration: 500.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 800.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 800.0.ms,
            duration: 500.0.ms,
            begin: 0.0,
            end: 1.0,
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
          child: FutureBuilder<ApplicationConfigRecord>(
            future: ApplicationConfigRecord.getDocumentOnce(
                FFAppState().applicationConfigDocRef!),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                );
              }

              final containerApplicationConfigRecord = snapshot.data!;

              return Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: MediaQuery.sizeOf(context).height * 0.4,
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.25, -3.05),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.5,
                            height: MediaQuery.sizeOf(context).width * 0.5,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xFF1E0098), Color(0xFFFFA071)],
                                stops: [0.0, 1.0],
                                begin: AlignmentDirectional(0.0, -1.0),
                                end: AlignmentDirectional(0, 1.0),
                              ),
                              shape: BoxShape.circle,
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation1']!),
                        ),
                        Align(
                          alignment: AlignmentDirectional(2.43, -2.73),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.7,
                            height: MediaQuery.sizeOf(context).width * 0.7,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xFF0006B4), Color(0xFF7479FF)],
                                stops: [0.0, 1.0],
                                begin: AlignmentDirectional(0.0, -1.0),
                                end: AlignmentDirectional(0, 1.0),
                              ),
                              shape: BoxShape.circle,
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation2']!),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-2.91, -6.61),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.8,
                            height: MediaQuery.sizeOf(context).width * 0.8,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xFFD63C00), Color(0xFFFFA071)],
                                stops: [0.0, 1.0],
                                begin: AlignmentDirectional(0.0, -1.0),
                                end: AlignmentDirectional(0, 1.0),
                              ),
                              shape: BoxShape.circle,
                            ),
                            alignment: AlignmentDirectional(0.0, 0.0),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation3']!),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.75, -1.07),
                          child: Image.asset(
                            'assets/images/SawadKhmerLogo1.gif',
                            width: 150.0,
                            fit: BoxFit.contain,
                          ).animateOnPageLoad(
                              animationsMap['imageOnPageLoadAnimation']!),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 10.0),
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.sizeOf(context).height * 0.17,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 8.0, 0.0),
                                child: TextFormField(
                                  controller: _model.usernameTextController,
                                  focusNode: _model.usernameFocusNode,
                                  autofocus: false,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Employee Id',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                        ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                        ),
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    focusedErrorBorder: InputBorder.none,
                                    prefixIcon: Icon(
                                      Icons.person_rounded,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                  validator: _model
                                      .usernameTextControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 8.0, 0.0),
                                child: TextFormField(
                                  controller: _model.passwordTextController,
                                  focusNode: _model.passwordFocusNode,
                                  autofocus: false,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Phone Number',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                        ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                        ),
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    focusedErrorBorder: InputBorder.none,
                                    prefixIcon: Icon(
                                      Icons.phone_iphone,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                  validator: _model
                                      .passwordTextControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ).animateOnPageLoad(
                        animationsMap['containerOnPageLoadAnimation4']!),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 40.0, 0.0, 0.0),
                              child: Container(
                                width: 190.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xFFD63C00),
                                      Color(0xFFFFA071)
                                    ],
                                    stops: [0.0, 1.0],
                                    begin: AlignmentDirectional(0.0, -1.0),
                                    end: AlignmentDirectional(0, 1.0),
                                  ),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            currentUserLocationValue =
                                                await getCurrentUserLocation(
                                                    defaultLocation:
                                                        LatLng(0.0, 0.0));
                                            var _shouldSetState = false;
                                            if (!((String appBuildNumber,
                                                    String latestBuildNumber) {
                                              return int.parse(
                                                      appBuildNumber) >=
                                                  int.parse(latestBuildNumber);
                                            }(
                                                functions.getBuildNumber(
                                                    _model.getBuildVersion)!,
                                                containerApplicationConfigRecord
                                                    .buildNumber))) {
                                              await showDialog(
                                                context: context,
                                                builder: (alertDialogContext) {
                                                  return AlertDialog(
                                                    content: Text(
                                                        '\'Morning Khmer\' មានកំណែថ្មី! សូមអាប់ដេតមុនពេលប្រើកម្មវិធី'),
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
                                              await actions
                                                  .terminateAppAction();
                                              if (_shouldSetState)
                                                safeSetState(() {});
                                              return;
                                            }
                                            if (_model.usernameTextController
                                                        .text !=
                                                    '') {
                                              if (!(_model.passwordTextController
                                                          .text !=
                                                      '')) {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                      'សូមវាយ Password',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: Colors.white,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                    duration: Duration(
                                                        milliseconds: 3000),
                                                    backgroundColor:
                                                        Color(0xB3090F13),
                                                  ),
                                                );
                                                if (_shouldSetState)
                                                  safeSetState(() {});
                                                return;
                                              }
                                            } else {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    'សូមវាយ Username',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                  duration: Duration(
                                                      milliseconds: 3000),
                                                  backgroundColor:
                                                      Color(0xB3090F13),
                                                ),
                                              );
                                              if (_shouldSetState)
                                                safeSetState(() {});
                                              return;
                                            }

                                            await requestPermission(
                                                locationPermission);
                                            if (await getPermissionStatus(
                                                locationPermission)) {
                                              _model.backgroundLocationCheck =
                                                  await actions
                                                      .backgroundLocationCheck();
                                              _shouldSetState = true;
                                              if (!_model
                                                  .backgroundLocationCheck!) {
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      content: Text(
                                                          'សូមជ្រើសរើស \"អនុញ្ញាតគ្រប់ពេល\" ចូលទៅកាន់ទីតាំងរបស់អ្នក ដើម្បីតាមដានការងាររបស់អ្នក។'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext),
                                                          child: Text(
                                                              'Open Setting'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                              }
                                            } else {
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
                                            if (!_model
                                                .permissionRequestOutput!) {
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
                                                await actions
                                                    .checkGpsServiceEnable();
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
                                              await actions
                                                  .checkGpsServiceEnable();
                                              _model.checkGpsEnable2 =
                                                  await actions
                                                      .checkGpsServiceEnable();
                                              _shouldSetState = true;
                                              if (!_model.checkGpsEnable2!) {
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
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
                                            FFAppState().employeeId = _model
                                                .usernameTextController.text;
                                            FFAppState().profilePhone = _model
                                                .passwordTextController.text;
                                            FFAppState().deviceId =
                                                _model.getDeviceIdOutput!;
                                            safeSetState(() {});
                                            FFAppState().isLogin = true;
                                            safeSetState(() {});
                                            if (isAndroid) {
                                            } else {
                                              if (!isiOS) {
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      content: Text(
                                                          'แอพพลิเคชั่นนี้ ให้ใช้ได้แค่ใน Android หรือ Ios เท่านั้น'),
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

                                            _model.customFirebaseAuthen =
                                                await actions.checkFirebase(
                                              '${_model.usernameTextController.text}@srisawadkhmer.com',
                                            );
                                            _shouldSetState = true;
                                            if (_model.customFirebaseAuthen ==
                                                'Create') {
                                              _model.userUID = await actions
                                                  .checkUserFirebase();
                                              _shouldSetState = true;

                                              var userCustomRecordReference =
                                                  UserCustomRecord.collection.doc(
                                                      '${_model.usernameTextController.text}@sawadkhmer.com');
                                              await userCustomRecordReference
                                                  .set(
                                                      createUserCustomRecordData(
                                                email:
                                                    '${_model.usernameTextController.text}@sawadkhmer.com',
                                                uid: _model.userUID,
                                                createdDate:
                                                    getCurrentTimestamp,
                                                employeeId: _model
                                                    .usernameTextController
                                                    .text,
                                                phoneNumber: _model
                                                    .passwordTextController
                                                    .text,
                                              ));
                                              _model.createdUserCustom =
                                                  UserCustomRecord.getDocumentFromData(
                                                      createUserCustomRecordData(
                                                        email:
                                                            '${_model.usernameTextController.text}@sawadkhmer.com',
                                                        uid: _model.userUID,
                                                        createdDate:
                                                            getCurrentTimestamp,
                                                        employeeId: _model
                                                            .usernameTextController
                                                            .text,
                                                        phoneNumber: _model
                                                            .passwordTextController
                                                            .text,
                                                      ),
                                                      userCustomRecordReference);
                                              _shouldSetState = true;
                                            }

                                            context.goNamed(
                                                SetPinPageWidget.routeName);

                                            if (_shouldSetState)
                                              safeSetState(() {});
                                          },
                                          text: 'LOGIN',
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: double.infinity,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: Color(0x00FFFFFF),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Inter Tight',
                                                      color: Colors.white,
                                                      letterSpacing: 0.0,
                                                    ),
                                            elevation: 2.0,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'containerOnPageLoadAnimation5']!),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Expanded(
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 1.0),
                      child: Text(
                        'Copyright ©2025.  SAWAD Rung Reung Finance.',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: Color(0xFF607D8B),
                              fontSize: 13.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ).animateOnPageLoad(
                          animationsMap['textOnPageLoadAnimation']!),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
