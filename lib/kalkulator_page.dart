import 'package:flutter/material.dart';
import 'package:project1/components/custom_textfield.dart';
import 'package:project1/components/custom_operator_button.dart';

class KalkulatorPage extends StatefulWidget {
  const KalkulatorPage({super.key});

  @override
  State<KalkulatorPage> createState() => _KalkulatorPageState();
}

class _KalkulatorPageState extends State<KalkulatorPage> {
  TextEditingController txtAngka1 = TextEditingController();
  TextEditingController txtAngka2 = TextEditingController();
  String hasil1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Calculator',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: const Color.fromARGB(255, 13, 150, 255),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
              'My Calculator Page',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextfield(
              myHint: "Enter First Number",
              txtController: txtAngka1,
              isNumber: true,
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextfield(
              myHint: "Enter Second Number",
              txtController: txtAngka2,
              isNumber: true,
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(
                myText: "+",
                onPressed: () {},
              ),
              CustomButton(
                myText: "-",
                onPressed: () {},
              ),
              CustomButton(
                myText: "*",
                onPressed: () {},
              ),
              CustomButton(
                myText: "/",
                onPressed: () {},
              ),
            ],
          ),

          Container(
            margin: EdgeInsets.all(20),
            child: Text(
              "Result: $hasil1",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}