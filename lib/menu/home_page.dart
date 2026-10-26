import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/controllers/home_controller.dart';
import 'package:project1/routes.dart';
import 'package:project1/components/custom_makanan_card.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = Get.put(HomeController());

  static const Color bgColor = Color(0xFF2B2B2B);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(43, 43, 43, 1),
      appBar: AppBar(
        title: const Text('Home Page'),
        centerTitle: true,
        backgroundColor: bgColor,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Menu Makanan',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 150, // wajib, karena ListView horizontal di dalam Column
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Obx(
              () => ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: controller.makananList.length,
                itemBuilder: (context, index) {
                  final makanan = controller.makananList[index];

                  return Container(
                      width: 280, // lebar tiap card
                      margin: const EdgeInsets.only(right: 12),
                      child: CustomMakananCard(
                        makanan: makanan,
                        onTap: () {
                          Get.toNamed(Routes.detailMakanan, arguments: makanan);
                        },
                      ),
                    );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
