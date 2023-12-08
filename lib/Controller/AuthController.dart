import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:loing_getx/model/UserModel.dart';

class AuthController extends GetxController {
  final storage = GetStorage();
  RxBool isLoggedIn = false.obs;
  Rx<User> user = User(email: '', password: '').obs;

  void register(String name, String email, String password) {
    isLoggedIn.value = true;
    user.value = User(
      email: email,
      password: password,
    );
    storage.write('isLoggedIn', true);
    storage.write('user', {'email': email, 'password': password});
    Get.offAllNamed('/login');
  }

  void login(String email, String password) {
    isLoggedIn.value = true;
    final userMap = storage.read('user');
    if (email == userMap['email'] && password == userMap['password']) {
      Get.offAllNamed('/home');
    } else {
      Get.snackbar("Error Login", "Don't Have User");
    }
  }

  void logout() {
    // isLoggedIn.value = false;
    // user.value = User(email: '', password: '');
    storage.remove('isLoggedIn');
    // storage.remove('user');
    Get.offAllNamed('/login');
  }

  @override
  void onInit() {
    super.onInit();
    isLoggedIn.value = storage.read('isLoggedIn') ?? false;
    final userMap = storage.read('user');
    if (userMap != null) {
      user.value = User(email: userMap['email'], password: userMap['password']);
    }
  }
}
