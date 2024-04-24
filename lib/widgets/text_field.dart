import 'package:flutter/material.dart';
import 'package:responsive_ui_dashboard/utlies/styles_app.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintStyle:
              StylesTextApp.styleRegular16(context).copyWith(color: const Color(0xffaaaaaa)),
          hintText: hint,
          fillColor: const Color(0xfffafafa),
          border: builtborder(),
          enabledBorder: builtborder(),
          focusedBorder: builtborder(),
          filled: true),
    );
  }

  OutlineInputBorder builtborder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.0),
      borderSide: const BorderSide(
        color: Color(0xffFafafa),
      )
    );
  }
}
