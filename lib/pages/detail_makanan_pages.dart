import 'package:flutter/material.dart';
import 'package:project1/models/makanan_model.dart';

class DetailMakananPage extends StatelessWidget {
  final MakananModel makanan;

  const DetailMakananPage({super.key, required this.makanan});

  static const Color bgColor = Color(0xFF2B2B2B);
  static const Color cardColor = Color(0xFF3A3A3A);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: const Text('Detail Makanan'),
        centerTitle: true,
        backgroundColor: bgColor,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gambar
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.asset(
                  makanan.gambar,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Nama (kiri) dan Rating (kanan)
            IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: _SectionCard(
                      title: 'Nama',
                      cardColor: cardColor,
                      child: Text(
                        makanan.namaMakanan,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  SizedBox(
                    width: 110,
                    child: _SectionCard(
                      title: 'Rating',
                      cardColor: cardColor,
                      child: Row(
                        children: [
                          const Icon(Icons.star, color: Colors.amber, size: 22),
                          const SizedBox(width: 4),
                          Text(
                            makanan.rating,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),

            // Harga
            _SectionCard(
              title: 'Harga',
              cardColor: cardColor,
              child: Text(
                makanan.harga,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.lightGreenAccent,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 12),

            // Deskripsi
            _SectionCard(
              title: 'Deskripsi',
              cardColor: cardColor,
              child: Text(
                makanan.deskripsi,
                style: const TextStyle(
                  fontSize: 15,
                  height: 1.5,
                  color: Colors.white70,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SectionCard extends StatelessWidget {
  final String title;
  final Widget child;
  final Color cardColor;

  const _SectionCard({
    required this.title,
    required this.child,
    required this.cardColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        color: cardColor,
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.white54,
                  letterSpacing: 0.5,
                ),
              ),
              const Divider(height: 20, color: Colors.white24),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
