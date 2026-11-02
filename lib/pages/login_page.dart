import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/components/custom_textfield.dart';
import 'package:project1/controllers/login_controller.dart';

import '../components/custom_operator_button.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login Page",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: const Color.fromARGB(255, 13, 150, 255),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Text(
            "Form Login",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextfield(
              myHint: "Input Username",
              txtController: controller.txtUsername,
              icon: Icons.person,
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextfield(
              myHint: "Input Password",
              txtController: controller.txtPassword,
              isPassword: true,
              icon: Icons.lock,
            ),
          ),

          Obx(
            () => controller.isLoading.value
                ? CircularProgressIndicator()
                : CustomOperatorButton(
                    myText: "Login Here",
                    onPressed: () {
                      controller.login();
                    },
                  ),
          ),
        ],
      ),
    );
  }
}