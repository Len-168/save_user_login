import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loing_getx/Controller/AuthController.dart';

class HomeScreen extends StatelessWidget {
  final authController = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "HomePage",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: InkWell(
              onTap: () {
                authController.logout();
              },
              child: Text(
                "Logout",
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
