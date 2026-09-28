import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorController extends GetxController {
  var hasilHitung = 0.0.obs; // obs digunakan untuk update ke UI page

  // method tambah kurang kali dan bagi
  void tambah(double angka1, double angka2) {
    double hasilTambah = angka1 + angka2;
    hasilHitung.value = hasilTambah;
  }

  void kali(double angka1, double angka2) {
    double hasilKali = angka1 * angka2;
    hasilHitung.value = hasilKali;
  }

  void kurang(double angka1, double angka2) {
    double hasilKurang = angka1 - angka2;
    hasilHitung.value = hasilKurang;
  }

  void bagi(double angka1, double angka2) {
    // warning kalau angka2 adalah 0
    if (angka2 == 0) {
      warning("Angka 2 tidak boleh 0 pada pembagian");
      return;
    }
    double hasilBagi = angka1 / angka2;
    hasilHitung.value = hasilBagi;
  }

  void warning(String pesan) {
    Get.snackbar(
      "Peringatan",
      pesan,
      backgroundColor: Colors.red.shade400,
      colorText: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}