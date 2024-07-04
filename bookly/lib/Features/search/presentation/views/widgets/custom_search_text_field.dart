import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../Core/utils/styles.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: buildOutlineInputMethod(),
        focusedBorder: buildOutlineInputMethod(),
        hintText: 'Search',
        hintStyle: styles.textStyle18,
        suffixIcon: Icon(
          FontAwesomeIcons.magnifyingGlass,
          color: Colors.white,
          size: 24,
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputMethod() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: Colors.white));
  }
}
