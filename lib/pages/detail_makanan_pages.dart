import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/components/custom_section_card.dart';
import 'package:project1/controllers/detail_makanan_controller.dart';

class DetailMakananPages extends StatelessWidget {
  DetailMakananPages({super.key});

  final controller = Get.put(DetailMakananController());

  static Color bgColor = Color(0xFF2B2B2B);

  @override
  Widget build(BuildContext context) {
    final makanan = controller.makanan;

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text('Detail Makanan'),
        centerTitle: true,
        backgroundColor: bgColor,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          // Tempat Gambar
          Container(
            height: 200,
            margin: EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: AssetImage(controller.makanan.gambar),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // buat nampilin detail
          CustomSectionCard(
            title: 'Informasi',
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  controller.makanan.namaMakanan,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber),
                    Text(
                      controller.makanan.rating,
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Harga di detail
          CustomSectionCard(
            title: 'Harga',
            child: Text(
              controller.makanan.harga,
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 252, 252, 252),
              ),
            ),
          ),

          // Deskripsi di detail
          CustomSectionCard(
            title: 'Deskripsi',
            child: Text(
              controller.makanan.deskripsi,
              style: TextStyle(fontSize: 15, color: Colors.white70),
            ),
          ),
        ],
      ),
    );
  }
}
