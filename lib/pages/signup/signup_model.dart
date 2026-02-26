import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'signup_widget.dart' show SignupWidget;
import 'package:flutter/material.dart';

class SignupModel extends FlutterFlowModel<SignupWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for create_email widget.
  FocusNode? createEmailFocusNode;
  TextEditingController? createEmailTextController;
  String? Function(BuildContext, String?)? createEmailTextControllerValidator;
  // State field(s) for create_password widget.
  FocusNode? createPasswordFocusNode;
  TextEditingController? createPasswordTextController;
  late bool createPasswordVisibility;
  String? Function(BuildContext, String?)?
      createPasswordTextControllerValidator;
  // State field(s) for create_confirm_password widget.
  FocusNode? createConfirmPasswordFocusNode;
  TextEditingController? createConfirmPasswordTextController;
  late bool createConfirmPasswordVisibility;
  String? Function(BuildContext, String?)?
      createConfirmPasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    createPasswordVisibility = false;
    createConfirmPasswordVisibility = false;
  }

  @override
  void dispose() {
    createEmailFocusNode?.dispose();
    createEmailTextController?.dispose();

    createPasswordFocusNode?.dispose();
    createPasswordTextController?.dispose();

    createConfirmPasswordFocusNode?.dispose();
    createConfirmPasswordTextController?.dispose();
  }
}
