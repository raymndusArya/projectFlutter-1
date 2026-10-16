import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/routes.dart';
import 'package:project1/pages/list_makanan_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Belajar Flutter Raymundus Arya',
      initialRoute: Routes.listMakanan,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      getPages: Routes.myPages,
    );
  }
}
