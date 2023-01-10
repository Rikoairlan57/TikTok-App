import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiktok_application/constants.dart';
import 'package:tiktok_application/views/screens/auth/login_screen.dart';
import 'package:tiktok_application/views/screens/auth/signup_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) {});
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TikTok App',
      theme:
          ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
      home: SignupScreen(),
    );
  }
}
