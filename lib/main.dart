import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:wgs_tes/views/main_page.dart';

void main() {
  GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Test',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 0, 174, 239),
        // accentColor: const Color.fromARGB(255, 0, 174, 239),
        splashColor: const Color.fromARGB(255, 0, 174, 239),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 0, 174, 239),
            primary: Colors.white,
          ),
        ),
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      //Go To SplashScreen First
      home: const MainPage(),
    );
  }
}
