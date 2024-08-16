import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'scanqr_model.dart';
export 'scanqr_model.dart';

class ScanqrWidget extends StatefulWidget {
  const ScanqrWidget({super.key});

  @override
  State<ScanqrWidget> createState() => _ScanqrWidgetState();
}

class _ScanqrWidgetState extends State<ScanqrWidget> {
  late ScanqrModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ScanqrModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(0.0, -1.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 200.0, 0.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        _model.qrresult =
                            await FlutterBarcodeScanner.scanBarcode(
                          '#C62828', // scanning line color
                          'Cancel', // cancel button text
                          true, // whether to show the flash icon
                          ScanMode.BARCODE,
                        );

                        context.pushNamed('profile');

                        setState(() {});
                      },
                      child: Icon(
                        Icons.qr_code_scanner_sharp,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 100.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
