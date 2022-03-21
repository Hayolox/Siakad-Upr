import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  RxBool isHidden = true.obs;
  RxBool isRememberme = false.obs;

  TextEditingController nim = TextEditingController();
  TextEditingController password = TextEditingController();

  void auth() {
    if (nim.text == '' && password.text == '') {
      /// Login gagal
    } else if (nim.text == '12345' && password.text == 'akil1221') {
      /// Login berhasil
      final box = GetStorage();

      if (isRememberme.isTrue) {
        box.write("dataRememberMe", {
          'nim': nim.text,
          'password': password.text,
        });
      } else {
        box.remove('dataRememberMe');
      }
      Get.offAllNamed('/mainPage');
    } else {
      /// Nim atau password salah
    }
  }
}
