import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'detail_widget.dart' show DetailWidget;
import 'package:flutter/material.dart';

class DetailModel extends FlutterFlowModel<DetailWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  DateTime? datePicked;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for harga widget.
  FocusNode? hargaFocusNode;
  TextEditingController? hargaTextController;
  String? Function(BuildContext, String?)? hargaTextControllerValidator;
  // State field(s) for bobot widget.
  FocusNode? bobotFocusNode;
  TextEditingController? bobotTextController;
  String? Function(BuildContext, String?)? bobotTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    hargaFocusNode?.dispose();
    hargaTextController?.dispose();

    bobotFocusNode?.dispose();
    bobotTextController?.dispose();
  }
}
