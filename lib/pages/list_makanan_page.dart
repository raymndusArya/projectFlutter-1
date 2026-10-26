import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/controllers/list_makanan_controller.dart';
import 'package:project1/routes.dart';
import 'package:project1/components/custom_makanan_card.dart';

class ListMakananPage extends StatelessWidget {
  ListMakananPage({super.key});

  final controller = Get.put(ListMakananController());

  static const Color bgColor = Color(0xFF2B2B2B);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text('List Makanan'),
        centerTitle: true,
        backgroundColor: bgColor,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Obx(
          () => ListView.builder(
            itemCount: controller.makananList.length,
            itemBuilder: (context, index) {
              final makanan = controller.makananList[index];
              return Dismissible(
                key: Key(makanan.namaMakanan),
                direction: DismissDirection.startToEnd,
                background: Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  color: Colors.red,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 20),
                  child: const Icon(Icons.delete, color: Colors.white),
                ),
                onDismissed: (_) => controller.makananList.removeAt(index),
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
    );
  }
}
