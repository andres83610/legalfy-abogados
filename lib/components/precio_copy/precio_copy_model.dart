import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PrecioCopyModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for NewUsername widget.
  TextEditingController? newUsernameController;
  String? Function(BuildContext, String?)? newUsernameControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    newUsernameController?.dispose();
  }

  /// Additional helper methods are added here.

}
