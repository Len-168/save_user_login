import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loing_getx/Controller/AuthController.dart';
import 'package:loing_getx/Screens/loginScreen.dart';
import 'package:loing_getx/widget/AuthBtn.dart';
import 'package:loing_getx/widget/TextField.dart';

// ignore: must_be_immutable
class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final AuthController authController = Get.find();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe4c7c7),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(children: <Widget>[
            Container(
              width: Get.width,
              height: 700,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(70),
                    bottomRight: Radius.circular(70),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 1,
                    )
                  ]),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    SizedBox(
                      height: 130,
                    ),
                    Text(
                      "REGISTER",
                      style: TextStyle(fontSize: 25),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    TextFieldReuseSable(
                      controller: nameController,
                      hintText: "USERNAME",
                      prefixIcon: Icon(Icons.person),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFieldReuseSable(
                      controller: emailController,
                      hintText: "EMAIL",
                      prefixIcon: Icon(Icons.email),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFieldReuseSable(
                      controller: passwordController,
                      hintText: "PASSWORD",
                      prefixIcon: Icon(Icons.lock_outline_rounded),
                      suffixIcon: Icon(
                        Icons.visibility,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    InkWell(
                        onTap: () {
                          authController.register(
                            nameController.text,
                            emailController.text,
                            passwordController.text,
                          );
                        },
                        child: AuthBtn(ActionName: "Register")),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Get.to((LoingScreen()));
                              },
                              child: Text(
                                "Back",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 62, 19, 19),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
