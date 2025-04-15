import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:dnalyst/widgets/food_diet_widget.dart' show FoodDietWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FoodDietModel extends FlutterFlowModel<FoodDietWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
