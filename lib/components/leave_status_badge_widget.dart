import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'leave_status_badge_model.dart';
export 'leave_status_badge_model.dart';

/// Coloured pill showing the decision state of a leave request.
class LeaveStatusBadgeWidget extends StatefulWidget {
  const LeaveStatusBadgeWidget({
    super.key,
    this.label,
    this.tone,
  });

  final String? label;
  final String? tone;

  @override
  State<LeaveStatusBadgeWidget> createState() => _LeaveStatusBadgeWidgetState();
}

class _LeaveStatusBadgeWidgetState extends State<LeaveStatusBadgeWidget> {
  late LeaveStatusBadgeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LeaveStatusBadgeModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (widget.tone == 'pending')
          Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).warning,
              borderRadius: BorderRadius.circular(999.0),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 4.0, 10.0, 4.0),
              child: Text(
                widget.label!,
                maxLines: 1,
                style: FlutterFlowTheme.of(context).labelSmall.override(
                      font: GoogleFonts.inter(
                        fontWeight:
                            FlutterFlowTheme.of(context).labelSmall.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).labelSmall.fontStyle,
                      ),
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).labelSmall.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).labelSmall.fontStyle,
                    ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        if (widget.tone == 'approve')
          Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).success,
              borderRadius: BorderRadius.circular(999.0),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 4.0, 10.0, 4.0),
              child: Text(
                widget.label!,
                maxLines: 1,
                style: FlutterFlowTheme.of(context).labelSmall.override(
                      font: GoogleFonts.inter(
                        fontWeight:
                            FlutterFlowTheme.of(context).labelSmall.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).labelSmall.fontStyle,
                      ),
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).labelSmall.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).labelSmall.fontStyle,
                    ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        if (widget.tone == 'notapprove')
          Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).error,
              borderRadius: BorderRadius.circular(999.0),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 4.0, 10.0, 4.0),
              child: Text(
                widget.label!,
                maxLines: 1,
                style: FlutterFlowTheme.of(context).labelSmall.override(
                      font: GoogleFonts.inter(
                        fontWeight:
                            FlutterFlowTheme.of(context).labelSmall.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).labelSmall.fontStyle,
                      ),
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).labelSmall.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).labelSmall.fontStyle,
                    ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        if (widget.tone == 'cancel')
          Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryText,
              borderRadius: BorderRadius.circular(999.0),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 4.0, 10.0, 4.0),
              child: Text(
                widget.label!,
                maxLines: 1,
                style: FlutterFlowTheme.of(context).labelSmall.override(
                      font: GoogleFonts.inter(
                        fontWeight:
                            FlutterFlowTheme.of(context).labelSmall.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).labelSmall.fontStyle,
                      ),
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).labelSmall.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).labelSmall.fontStyle,
                    ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
      ],
    );
  }
}
