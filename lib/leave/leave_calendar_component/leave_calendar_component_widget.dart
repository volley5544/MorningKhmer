import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'leave_calendar_component_model.dart';
export 'leave_calendar_component_model.dart';

class LeaveCalendarComponentWidget extends StatefulWidget {
  const LeaveCalendarComponentWidget({
    super.key,
    this.holidayList,
    this.currentYear,
    required this.nextYear,
    this.leaveTime,
    String? currentYearSelectableDates,
    this.nextYearSelectableDates,
    this.startDate,
    this.endDate,
    required this.previousYear,
    this.previousYearSelectableDates,
  }) : this.currentYearSelectableDates = currentYearSelectableDates ?? '';

  final List<String>? holidayList;
  final String? currentYear;
  final String? nextYear;
  final String? leaveTime;
  final String currentYearSelectableDates;
  final String? nextYearSelectableDates;
  final String? startDate;
  final String? endDate;
  final String? previousYear;
  final String? previousYearSelectableDates;

  @override
  State<LeaveCalendarComponentWidget> createState() =>
      _LeaveCalendarComponentWidgetState();
}

class _LeaveCalendarComponentWidgetState
    extends State<LeaveCalendarComponentWidget> {
  late LeaveCalendarComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LeaveCalendarComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        child: custom_widgets.LeaveCalendarWidget(
          width: 100.0,
          height: 100.0,
          todayColor: FlutterFlowTheme.of(context).primary,
          selectedColor: FlutterFlowTheme.of(context).secondary,
          selectedTextColor: FlutterFlowTheme.of(context).tertiary,
          currentYear: '2026',
          nextYear: '2026',
          previousYear: '2026',
          currentYearSelectableDates: '2026',
          previousYearSelectableDates: '2026',
          nextYearSelectableDates: '2026',
          startdate: '2026',
          enddate: '2026',
          holidaysList: widget.holidayList,
          currentDate: getCurrentTimestamp,
        ),
      ),
    );
  }
}
