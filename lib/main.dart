import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:loing_getx/Controller/AuthController.dart';
import 'package:loing_getx/Screens/HomeScreen.dart';
import 'package:loing_getx/Screens/loginScreen.dart';
import 'package:loing_getx/Screens/registerScreen.dart';

void main() async {
  await GetStorage.init();
  Get.put(AuthController());
  runApp(AuthApp());
}

class AuthApp extends StatelessWidget {
  final AuthController authController = Get.find();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: authController.isLoggedIn.value ? '/home' : '/login',
      getPages: [
        GetPage(name: '/register', page: () => RegisterScreen()),
        GetPage(name: '/login', page: () => LoingScreen()),
        GetPage(name: '/home', page: () => HomeScreen()),
      ],
    );
  }
}
