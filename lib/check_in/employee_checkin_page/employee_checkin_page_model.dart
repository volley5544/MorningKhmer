import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'employee_checkin_page_widget.dart' show EmployeeCheckinPageWidget;
import 'package:flutter/material.dart';

class EmployeeCheckinPageModel
    extends FlutterFlowModel<EmployeeCheckinPageWidget> {
  ///  Local state fields for this page.

  FFUploadedFile? checkinImageFile;

  LocationDataModelStruct? locationListData;
  void updateLocationListDataStruct(
      Function(LocationDataModelStruct) updateFn) {
    updateFn(locationListData ??= LocationDataModelStruct());
  }

  ListLocationStruct? locationSelected;
  void updateLocationSelectedStruct(Function(ListLocationStruct) updateFn) {
    updateFn(locationSelected ??= ListLocationStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (location list)] action in EmployeeCheckinPage widget.
  ApiCallResponse? apiResultjii;
  // Stores action output result for [Action Block - CheckStatusAPI] action in EmployeeCheckinPage widget.
  String? checkStatusLocation;
  bool isDataUploading_uploadDataCameraIcon = false;
  FFUploadedFile uploadedLocalFile_uploadDataCameraIcon =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // State field(s) for DropDownBranch widget.
  String? dropDownBranchValue;
  FormFieldController<String>? dropDownBranchValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  bool isDataUploading_uploadDataOjl = false;
  FFUploadedFile uploadedLocalFile_uploadDataOjl =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // Stores action output result for [Custom Action - locationCalculate] action in Button widget.
  bool? calLocation;
  // Stores action output result for [Custom Action - uploadFileFirebaseStorage] action in Button widget.
  String? checkinImageUrlOutput;
  // Stores action output result for [Backend Call - API (work check)] action in Button widget.
  ApiCallResponse? checkinAPI;
  // Stores action output result for [Action Block - CheckStatusAPI] action in Button widget.
  String? checkStatusCheckin;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
