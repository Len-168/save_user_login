import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class AuthBtn extends StatelessWidget {
  AuthBtn({super.key, required this.ActionName});
  String? ActionName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 55,
      decoration: BoxDecoration(
          color: Color(0xffd9a9a9),
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
                color: Colors.black26,
                blurRadius: 2,
                spreadRadius: 2,
                offset: Offset(0, 2))
          ]),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          "$ActionName",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
    );
  }
}
