import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/components/custom_textfield.dart';
import 'package:project1/controllers/registration_controller.dart';
import 'package:project1/routes.dart';

class RegistrationPage extends StatelessWidget {
  RegistrationPage({super.key});

  final controller = Get.put(RegistrationController());
  final txtUsername = TextEditingController();
  final txtEmail = TextEditingController();
  final txtNoWa = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade50,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                // Logo bulat
                Container(
                  padding: const EdgeInsets.all(18),
                  decoration: const BoxDecoration(
                    color: Colors.indigo,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.person_add_alt_1,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  "Create an Account",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  "Fill in the form below to create your account",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
                ),
                const SizedBox(height: 24),

                // Kartu form
                Card(
                  elevation: 6,
                  shadowColor: Colors.black26,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        CustomTextfield(
                          myHint: "Username",
                          txtController: txtUsername,
                        ),
                        const SizedBox(height: 16),
                        CustomTextfield(
                          myHint: "Email",
                          txtController: txtEmail,
                        ),
                        const SizedBox(height: 16),
                        CustomTextfield(
                          myHint: "Phone Number",
                          txtController: txtNoWa,
                          isNumber: true,
                        ),
                        const SizedBox(height: 16),
                        Obx(
                          () => DropdownButtonFormField<String>(
                            value: controller.jenisKelamin.value,
                            isExpanded: true,
                            hint: const Text("Please Select Your Gender"),
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.wc_outlined),
                              filled: true,
                              fillColor: Colors.grey.shade100,
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 16,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  color: Colors.grey.shade300,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                  color: Colors.indigo,
                                  width: 2,
                                ),
                              ),
                            ),
                            items: controller.daftarJenisKelamin
                                .map(
                                  (e) => DropdownMenuItem(
                                    value: e,
                                    child: Text(e),
                                  ),
                                )
                                .toList(),
                            onChanged: (value) {
                              controller.jenisKelamin.value = value;
                            },
                          ),
                        ),
                        SizedBox(height: 10),
                        Obx(
                          () => DropdownButtonFormField<String>(
                            value: controller.agama.value,
                            hint: Text("Please Select Your Religion"),
                            isExpanded: true,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.self_improvement),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            items: controller.daftarAgama
                                .map(
                                  (e) => DropdownMenuItem(
                                    value: e,
                                    child: Text(e),
                                  ),
                                )
                                .toList(),
                            onChanged: (value) {
                              controller.agama.value = value;
                            },
                          ),
                        ),
                        const SizedBox(height: 24),
                        SizedBox(
                          height: 52,
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.indigo,
                              foregroundColor: Colors.white,
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            icon: const Icon(Icons.send_rounded),
                            label: const Text(
                              "Send",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            onPressed: () {
                              Get.toNamed(
                                Routes.confirmRegistration,
                                arguments: {
                                  "username": txtUsername.text,
                                  "email": txtEmail.text,
                                  "no_wa": txtNoWa.text,
                                  "nama_lengkap": "admin",
                                  "jenis_kelamin":
                                      controller.jenisKelamin.value ?? "-",
                                  "agama": controller.agama.value ?? "-",
                                },
                              );
                            },
                          ),
                        ),
                      ],
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
