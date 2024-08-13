import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for notelepondriver widget.
  FocusNode? notelepondriverFocusNode;
  TextEditingController? notelepondriverTextController;
  String? Function(BuildContext, String?)?
      notelepondriverTextControllerValidator;
  // State field(s) for emaildriver widget.
  FocusNode? emaildriverFocusNode;
  TextEditingController? emaildriverTextController;
  String? Function(BuildContext, String?)? emaildriverTextControllerValidator;
  // Stores action output result for [Backend Call - API (logoutdriver)] action in Button widget.
  ApiCallResponse? apiResultvac;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    notelepondriverFocusNode?.dispose();
    notelepondriverTextController?.dispose();

    emaildriverFocusNode?.dispose();
    emaildriverTextController?.dispose();
  }
}
