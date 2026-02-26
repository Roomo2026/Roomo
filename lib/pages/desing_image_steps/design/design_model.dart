import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'design_widget.dart' show DesignWidget;
import 'package:flutter/material.dart';

class DesignModel extends FlutterFlowModel<DesignWidget> {
  ///  Local state fields for this page.

  String? selectedMode = 'full_redesign';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Create Document] action in FloatingActionButton widget.
  ProjectsRecord? createdProject;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
