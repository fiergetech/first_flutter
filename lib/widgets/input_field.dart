import 'package:first_flutter/widgets/text_field_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class InputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final bool obscureText;
  final TextEditingController textEditingController;

  InputField({
    required this.hintText,
    required this.icon,
    required this.obscureText,
    required this.textEditingController,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        cursorColor: Colors.black,
        obscureText: obscureText,
        controller: textEditingController,
        decoration: InputDecoration(
          hintText: hintText,
          helperStyle: const TextStyle(
            color: Colors.black,
            fontSize: 18.0,
          ),
          prefixIcon: Icon(
            icon,
            color: Colors.black,
            size: 20,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
