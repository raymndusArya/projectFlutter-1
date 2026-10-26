import 'package:get/get.dart';
import 'package:project1/models/makanan_model.dart';

class HomeController extends GetxController {
  final List<MakananModel> makananList = [
    MakananModel(
      namaMakanan: 'Gado-Gado',
      harga: 'Rp 13.000',
      rating: '4.3',
      gambar: 'lib/Assets/gadoGado.jpg',
      deskripsi: 'Sayuran rebus dengan bumbu kacang.',
    ),
    MakananModel(
      namaMakanan: 'Mie Ayam',
      harga: 'Rp 12.000',
      rating: '4.2',
      gambar: 'lib/Assets/MieAyam.jpg',
      deskripsi: 'Mie dengan topping ayam dan pangsit.',
    ),
    MakananModel(
      namaMakanan: 'Nasi Goreng',
      harga: 'Rp 15.000',
      rating: '4.5',
      gambar: 'lib/Assets/nasiGoreng.jpg',
      deskripsi: 'Nasi goreng dengan telur, ayam, dan sayuran.',
    ),
    MakananModel(
      namaMakanan: 'Rendang',
      harga: 'Rp 25.000',
      rating: '4.8',
      gambar: 'lib/Assets/rendang.jpg',
      deskripsi: 'Daging sapi dimasak lama dengan santan dan rempah.',
    ),
    MakananModel(
      namaMakanan: 'Sate Ayam',
      harga: 'Rp 18.000',
      rating: '4.6',
      gambar: 'lib/Assets/SateAyam.jpeg',
      deskripsi: 'Sate ayam bakar dengan bumbu kacang.',
    ),
    MakananModel(
      namaMakanan: 'Nasi Katsu',
      harga: 'Rp 14.000',
      rating: '4.4',
      gambar: 'lib/Assets/katsu.jpg',
      deskripsi: 'Nasi dengan potongan daging katsu goreng.',
    ),
    MakananModel(
      namaMakanan: 'Mie Telur',
      harga: 'Rp 10.000',
      rating: '4.1',
      gambar: 'lib/Assets/mieTelur.jpg',
      deskripsi: 'Mie dengan telur rebus dan kuah kaldu.',
    ),
    MakananModel(
      namaMakanan: 'Nasi Ayam',
      harga: 'Rp 12.000',
      rating: '4.3',
      gambar: 'lib/Assets/NasiAyam.png',
      deskripsi: 'Nasi dengan potongan ayam goreng.',
    ),
    MakananModel(
      namaMakanan: 'Batagor',
      harga: 'Rp 11.000',
      rating: '4.2',
      gambar: 'lib/Assets/batagor.jpg',
      deskripsi: 'Batagor adalah makanan yang terbuat dari kulit ikan yang digoreng dan disajikan dengan saus kacang.',
    ),
  ].obs;
}
