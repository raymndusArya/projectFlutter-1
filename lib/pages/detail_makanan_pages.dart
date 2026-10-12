import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/components/custom_section_card.dart';
import 'package:project1/controllers/detail_makanan_controller.dart';

class DetailMakananPage extends StatelessWidget {
  DetailMakananPage({super.key});

  final controller = Get.put(DetailMakananController());

  static const Color bgColor = Color(0xFF2B2B2B);

  @override
  Widget build(BuildContext context) {
    final makanan = controller.makanan;

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: const Text('Detail Makanan'),
        centerTitle: true,
        backgroundColor: bgColor,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Tempat Gambar
          Container(
            height: 200,
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: AssetImage(makanan.gambar),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // untuk menampilkan informasi makanan
          CustomSectionCard(
            title: 'Informasi',
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  makanan.namaMakanan,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.amber),
                    Text(
                      makanan.rating,
                      style: const TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Harga
          CustomSectionCard(
            title: 'Harga',
            child: Text(
              makanan.harga,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.lightGreenAccent,
              ),
            ),
          ),

          // Deskripsi
          CustomSectionCard(
            title: 'Deskripsi',
            child: Text(
              makanan.deskripsi,
              style: const TextStyle(fontSize: 15, color: Colors.white70),
            ),
          ),
        ],
      ),
    );
  }
}
