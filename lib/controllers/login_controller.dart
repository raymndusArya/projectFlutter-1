import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/pages/main_menu_page.dart';
import 'package:http/http.dart' as http;
import 'package:project1/models/login_models.dart';

class LoginController extends GetxController {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  var isLoading = false.obs;
  var loginModel = Rxn<LoginModels>();

  // untuk hit API
  Future<void> login() async {
    if (txtUsername.text.toString().isEmpty ||
        txtPassword.text.toString().isEmpty) {
      Get.snackbar("Error", "Username dan password harus terisi.");
    } else {
      try {
        isLoading.value = true;
        final url = Uri.parse("https://mediadwi.com/api/latihan/login");

        final response = await http.post(
          url,
          body: {
            "username": txtUsername.text.toString(),
            "password": txtPassword.text.toString(),
          },
        );

        isLoading.value = false;
        if (response.statusCode == 200) {
          loginModel.value = LoginModelsFromJson(response.body);
          //ambil message dari JSONObject
          if (loginModel.value?.status == true) {
            Get.snackbar("Berhasil", loginModel.value!.message);
            Get.off(() => MainMenuPage());
          } else {
            Get.snackbar("Gagal", loginModel.value!.message);
          }
        } else {
          Get.snackbar("Gagal", "Cek koneksi internet");
        }
      } catch (e) {
        Get.snackbar("Gagal", e.toString());
      }
    }
  }
}
