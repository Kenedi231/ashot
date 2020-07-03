import 'package:flutter/material.dart';

void updateText(TextEditingController controller, String text) {
  controller.value = controller.value.copyWith(
    text: text,
    selection: TextSelection(
      baseOffset: text.length,
      extentOffset: text.length,
    ),
  );
}