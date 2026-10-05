import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/controllers/confirm_registration_controller.dart';

class ConfirmRegistrationPage extends StatelessWidget {
  ConfirmRegistrationPage({super.key});

  final controller = Get.put(ConfirmRegistrationController());

  Widget baris(IconData icon, String label, String isi) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Icon(icon, color: Colors.indigo),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(label, style: TextStyle(fontSize: 12, color: Colors.grey)),
                Text(
                  isi,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade50,
      appBar: AppBar(
        title: Text("Confirm Page"),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Data Pendaftaran",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
            ),
            SizedBox(height: 4),
            Text(
              "Pastikan data kamu sudah benar",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 16),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Column(
                children: [
                  baris(Icons.person, "Username", controller.username),
                  Divider(),
                  baris(Icons.email, "Email", controller.email),
                  Divider(),
                  baris(Icons.phone, "No. WA", controller.no_wa),
                  Divider(),
                  baris(Icons.wc, "Jenis Kelamin", controller.jenis_kelamin),
                  Divider(),
                  baris(Icons.self_improvement, "Agama", controller.agama),
                ],
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  Get.back();
                },
                child: Text("ok"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}