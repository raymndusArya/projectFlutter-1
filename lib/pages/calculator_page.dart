import 'package:project1/controllers/calculator_controller.dart';
import '../components/custom_textfield.dart';
import '../components/custom_operator_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key});

  final controller = Get.put(CalculatorController());
  // menyambingkan page dan controller

  final txtangka1 = TextEditingController();
  final txtangka2 = TextEditingController();

  // ubah teks jadi double; kalau kosong tampil warning dan controller tidak dipanggil
  void _proses(void Function(double, double) operasi) {
    final a = double.tryParse(txtangka1.text.trim());
    final b = double.tryParse(txtangka2.text.trim());

    if (a == null || b == null) {
      controller.warning("Angka 1 dan Angka 2 tidak boleh kosong");
      return;
    }
    operasi(a, b); // a dan b sudah pasti double
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F5F9),
      appBar: AppBar(
        title: const Text(
          "my kalkulator",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xFF2D3A4F),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 420),
            child: Column(
              children: [
                // kartu input
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.06),
                        blurRadius: 12,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Masukkan angka",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF2D3A4F),
                        ),
                      ),
                      const SizedBox(height: 16),
                      CustomTextfield(
                        myHint: "input angka 1",
                        txtController: txtangka1,
                        isNumber: true,
                      ),
                      const SizedBox(height: 12),
                      CustomTextfield(
                        myHint: "input angka 2",
                        txtController: txtangka2,
                        isNumber: true,
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: CustomButton(
                              onPressed: () => _proses(controller.tambah),
                              myText: "Tambah",
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: CustomButton(
                              onPressed: () => _proses(controller.kurang),
                              myText: "Kurang",
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: CustomButton(
                              onPressed: () => _proses(controller.kali),
                              myText: "Kali",
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: CustomButton(
                              onPressed: () => _proses(controller.bagi),
                              myText: "Bagi",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                // kartu hasil
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFF2D3A4F),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Obx(
                    () => Text(
                      "hasil ${controller.hasilHitung.value}",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}