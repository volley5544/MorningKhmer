import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/leave_balance_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'leave_balance_page_model.dart';
export 'leave_balance_page_model.dart';

/// Per-leave-type balances for the current year.
class LeaveBalancePageWidget extends StatefulWidget {
  const LeaveBalancePageWidget({super.key});

  static String routeName = 'LeaveBalancePage';
  static String routePath = '/leave-balance';

  @override
  State<LeaveBalancePageWidget> createState() => _LeaveBalancePageWidgetState();
}

class _LeaveBalancePageWidgetState extends State<LeaveBalancePageWidget> {
  late LeaveBalancePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LeaveBalancePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.balanceRes = await LeaveGetListCall.call(
        language: 'en',
        url: FFAppState().urlStorageData.baseUrl,
        token: currentAuthenticationToken,
      );

      if ((_model.balanceRes?.succeeded ?? true)) {
        _model.leaveTypes = LeaveListResponseStruct.maybeFromMap(
                (_model.balanceRes?.jsonBody ?? ''))!
            .results
            .leaveList
            .toList()
            .cast<LeaveTypeBalanceStruct>();
        safeSetState(() {});
        _model.loading = false;
        safeSetState(() {});
      } else {
        _model.loading = false;
        safeSetState(() {});
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Could not load your leave balances.',
              style: TextStyle(),
            ),
            duration: Duration(milliseconds: 4000),
          ),
        );
      }
    });

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
        appBar: AppBar(
          backgroundColor: Color(0xFFFF6500),
          iconTheme: IconThemeData(color: Colors.white),
          automaticallyImplyLeading: true,
          title: Text(
            FFLocalizations.of(context).getText(
              'a6zlyct9' /* Leave balances */,
            ),
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  font: GoogleFonts.interTight(
                    fontWeight: FontWeight.w600,
                    fontStyle:
                        FlutterFlowTheme.of(context).titleLarge.fontStyle,
                  ),
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                  fontStyle: FlutterFlowTheme.of(context).titleLarge.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  FFLocalizations.of(context).getText(
                    'vpwoccez' /* Pick a leave type to start a r... */,
                  ),
                  style: FlutterFlowTheme.of(context).bodySmall.override(
                        font: GoogleFonts.inter(
                          fontWeight:
                              FlutterFlowTheme.of(context).bodySmall.fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodySmall.fontStyle,
                        ),
                        color: FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).bodySmall.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodySmall.fontStyle,
                      ),
                ),
                if (_model.loading ?? true)
                  CircularPercentIndicator(
                    percent: 0.0,
                    radius: 16.0,
                    animation: false,
                    animateFromLastPercent: true,
                  ),
                Expanded(
                  flex: 1,
                  child: Builder(
                    builder: (context) {
                      final leaveType = _model.leaveTypes.toList();

                      return ListView.separated(
                        padding: EdgeInsets.zero,
                        primary: false,
                        scrollDirection: Axis.vertical,
                        itemCount: leaveType.length,
                        separatorBuilder: (_, __) => SizedBox(height: 12.0),
                        itemBuilder: (context, leaveTypeIndex) {
                          final leaveTypeItem = leaveType[leaveTypeIndex];
                          return InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                LeaveRequestFormPageWidget.routeName,
                                queryParameters: {
                                  'leaveType': serializeParam(
                                    leaveTypeItem.leaveType,
                                    ParamType.String,
                                  ),
                                  'leaveName': serializeParam(
                                    leaveTypeItem.name,
                                    ParamType.String,
                                  ),
                                  'remainingDays': serializeParam(
                                    leaveTypeItem.currentYear.leaveRemain,
                                    ParamType.String,
                                  ),
                                  'year': serializeParam(
                                    leaveTypeItem.currentYear.year,
                                    ParamType.String,
                                  ),
                                }.withoutNulls,
                              );
                            },
                            child: Container(
                              child: wrapWithModel(
                                model: _model.leaveBalanceCardModels.getModel(
                                  leaveTypeIndex.toString(),
                                  leaveTypeIndex,
                                ),
                                updateCallback: () => safeSetState(() {}),
                                child: LeaveBalanceCardWidget(
                                  key: Key(
                                    'Keyg1e_${leaveTypeIndex.toString()}',
                                  ),
                                  leaveName: leaveTypeItem.name,
                                  remaining:
                                      leaveTypeItem.currentYear.leaveRemain,
                                  total: leaveTypeItem.currentYear.leaveLimit,
                                  used: leaveTypeItem.currentYear.leaveUse,
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ].divide(SizedBox(height: 12.0)),
            ),
          ),
        ),
      ),
    );
  }
}
