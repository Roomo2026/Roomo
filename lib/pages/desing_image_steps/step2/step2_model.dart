import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'step2_widget.dart' show Step2Widget;
import 'package:flutter/material.dart';

class Step2Model extends FlutterFlowModel<Step2Widget> {
  ///  Local state fields for this page.

  String? selectedImageUrl;

  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadCamera = false;
  FFUploadedFile uploadedLocalFile_uploadCamera =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadCamera = '';

  bool isDataUploading_uploadData5wj = false;
  FFUploadedFile uploadedLocalFile_uploadData5wj =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadData5wj = '';

  bool isDataUploading_uploadGallery = false;
  FFUploadedFile uploadedLocalFile_uploadGallery =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadGallery = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
