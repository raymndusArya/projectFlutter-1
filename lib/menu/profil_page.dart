import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  static const Color bgColor = Color(0xFF2B2B2B);
  static const Color cardColor = Color(0xFF3A3A3A);
  static const Color accentColor = Color(0xFF0D96FF);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        foregroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.qr_code_2_rounded),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Foto profil
          const Center(
            child: CircleAvatar(
              radius: 56,
              backgroundColor: cardColor,
              child: Icon(Icons.person_rounded, size: 72, color: Colors.white70),
            ),
          ),
          const SizedBox(height: 16),

          // nama dan online
          const Center(
            child: Text(
              'Nama Pengguna',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Center(
            child: Text('online', style: TextStyle(color: Colors.white54)),
          ),
          const SizedBox(height: 24),

          // 3 tombol yang dibawah foto profil 
          Row(
            children: const [
              Expanded(
                child: Card(
                  color: cardColor,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: Column(
                      children: [
                        Icon(Icons.add_a_photo_rounded, color: Colors.white),
                        SizedBox(height: 6),
                        Text('Atur Foto', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  color: cardColor,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: Column(
                      children: [
                        Icon(Icons.edit_rounded, color: Colors.white),
                        SizedBox(height: 6),
                        Text('Edit Info', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  color: cardColor,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: Column(
                      children: [
                        Icon(Icons.settings_rounded, color: Colors.white),
                        SizedBox(height: 6),
                        Text('Pengaturan', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),

          // buat profil
          const Card(
            color: cardColor,
            child: Column(
              children: [
                ListTile(
                  title: Text('+62 812 3456 7890',
                      style: TextStyle(color: Colors.white)),
                  subtitle:
                      Text('Telepon', style: TextStyle(color: Colors.white54)),
                ),
                ListTile(
                  title: Text('Halo, saya pengguna baru.',
                      style: TextStyle(color: Colors.white)),
                  subtitle:
                      Text('Bio', style: TextStyle(color: Colors.white54)),
                ),
                ListTile(
                  title: Text('@nama_pengguna',
                      style: TextStyle(color: Colors.white)),
                  subtitle:
                      Text('Username', style: TextStyle(color: Colors.white54)),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          // buat postingan nya
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              ChoiceChip(
                label: Text('Postingan'),
                selected: true,
                selectedColor: accentColor,
                labelStyle: TextStyle(color: Colors.white),
              ),
              SizedBox(width: 8),
              ChoiceChip(
                label: Text('Arsip'),
                selected: false,
                backgroundColor: cardColor,
                labelStyle: TextStyle(color: Colors.white60),
              ),
            ],
          ),
          const SizedBox(height: 32),

          
          const Center(
            child: Text(
              'Belum ada postingan',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 8),
          const Center(
            child: Text(
              'Postingan Anda akan muncul di sini',
              style: TextStyle(color: Colors.white54),
            ),
          ),
        ],
      ),

      // Navigasi
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            backgroundColor: accentColor,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 14),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          onPressed: () {},
          icon: const Icon(Icons.camera_alt_rounded),
          label: const Text(
            'Buat Postingan',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}