import 'package:flutter/material.dart';
import 'package:siakad/controller/loginController.dart';
import 'package:siakad/pages/main_page.dart';
import 'package:siakad/pages/sign_page.dart';
import 'package:siakad/pages/splash_page.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/', page: () => const SplashPage()),
        GetPage(
            name: '/login',
            page: () => SignPage(),
            binding: BindingsBuilder.put(
              () => LoginController(),
            )),
        GetPage(name: '/mainPage', page: () => const MainPage())
      ],
    );
  }
}
