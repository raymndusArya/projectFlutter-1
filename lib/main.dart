import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/pages/calculator_page.dart';
import 'package:project1/pages/registration_page.dart';
import 'controllers/calculator_controller.dart';
import 'package:project1/routes.dart';


void main () {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
       title: 'Belajar Flutter Raymundus Arya',
       initialRoute: Routes.registration,
       getPages: Routes.myPages,
    );
  }
}
