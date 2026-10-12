import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/controllers/list_makanan_controller.dart';
import 'package:project1/pages/detail_makanan_pages.dart';

class ListMakananPage extends StatelessWidget {
  ListMakananPage({super.key});

  final controller = Get.put(ListMakananController());

  static const Color bgColor = Color(0xFF2B2B2B);
  static const Color cardColor = Color(0xFF3A3A3A);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: const Text('List Makanan'),
        centerTitle: true,
        backgroundColor: bgColor,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: controller.makananList.length,
        itemBuilder: (context, index) {
          final makanan = controller.makananList[index];
          return Card(
            color: cardColor,
            elevation: 0,
            margin: const EdgeInsets.only(bottom: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(12),
              onTap: () {
                Get.to(() => DetailMakananPage(makanan: makanan));
              },
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        makanan.gambar,
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            makanan.namaMakanan,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              const Icon(Icons.star,
                                  color: Colors.amber, size: 16),
                              const SizedBox(width: 4),
                              Text(
                                makanan.rating,
                                style: const TextStyle(color: Colors.white70),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          Text(
                            makanan.harga,
                            style: const TextStyle(
                              color: Colors.lightGreenAccent,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 16,
                      color: Colors.white54,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}