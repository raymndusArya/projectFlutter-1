import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/components/custom_textfield.dart';
import 'package:project1/controllers/login_controller.dart';

import '../components/custom_operator_button.dart';

class LoginPageClone extends StatelessWidget {
  LoginPageClone({super.key});

  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.all(24),
          child: Column(
            children: [
              
              Container(
                width: 300,
                height: 100,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Transform.scale(
                  scale: 1.10,
                  child: Image.asset(
                    'lib/Assets/apple_music.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
               SizedBox(height: 32),

              // Judul
               Text(
                'Continue with Email',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
               SizedBox(height: 16),
               Text(
                'Enter your email to sign in with an existing account or create a new one.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
               SizedBox(height: 32),

              // buat password dan username
              CustomTextfield(
                myHint: 'Email',
                txtController: controller.txtUsername,
                isDark: true,
              ),
               SizedBox(height: 12),
              CustomTextfield(
                myHint: 'Password',
                txtController: controller.txtPassword,
                isPassword: false,
                isDark: true,
              ),

              SizedBox(height: 20,),

              Obx(
                () => controller.isLoading.value
                    ?  CircularProgressIndicator()
                    : SizedBox(
                        width: double.infinity,
                        child: CustomOperatorButton(
                          myText: 'Continue',
                          onPressed: () {
                            controller.login();
                          },
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}