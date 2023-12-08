import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFieldReuseSable extends StatelessWidget {
  TextFieldReuseSable({
    super.key,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    required this.controller,
    // required this.validate,
  });

  String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextEditingController controller;
  // final FormFieldValidator validate;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      // validator: validate,
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(),
        focusColor: Colors.grey,
        prefixIcon: prefixIcon,
        prefixIconColor: const Color.fromARGB(255, 24, 23, 23),
        hintText: hintText,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
