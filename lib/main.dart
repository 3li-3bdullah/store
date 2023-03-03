import 'package:flutter/material.dart';
import 'package:flutter_application_4/view/home_body.dart';
import '../constants.dart';
import 'screens/home_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Electrical store',
      theme: ThemeData(primarySwatch: Colors.blue, primaryColor: kPrimaryColor),
      home: const  HomeScreen(),
    );
  }
}
