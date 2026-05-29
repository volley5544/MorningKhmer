import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'blank_page_widget.dart' show BlankPageWidget;
import 'package:flutter/material.dart';

class BlankPageModel extends FlutterFlowModel<BlankPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  bool isDataUploading_uploadDataIe6 = false;
  FFUploadedFile uploadedLocalFile_uploadDataIe6 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
