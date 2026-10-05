import 'package:flutter/material.dart';
import 'package:project1/components/custom_textfield.dart';
import '../components/custom_operator_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  String statusLogin = "";

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
            "Form Login " + statusLogin,
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
              txtController: txtUsername,
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextfield(
              myHint: "Input Password",
              txtController: txtPassword,
            ),
          ),

          CustomButton(
            myText: "Login Here",
            onPressed: () {
              setState(() {
                String username = txtUsername.text.toString();
                String password = txtPassword.text.toString();

                if (username == "admin" && password == "admin") {
                  
                  statusLogin = "admin";
                  print("sukses login");
                } else {
                  statusLogin = "failed";
                  print("gagal login");
                }
              });
            },
          ),
        ],
      ),
    );
  }
}