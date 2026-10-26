import 'package:flutter/material.dart';
import 'package:project1/menu/history_page.dart';
import 'package:project1/menu/home_page.dart';
import 'package:project1/menu/profil_page.dart';
import 'package:get/get.dart';

class MainMenuController extends GetxController {
  // variable tanda for index stack body, mana yang akan tampil.

  final RxInt selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
  }

  List<Widget> listPages = [HomePage(), HistoryPage(), ProfilPage()];
}
