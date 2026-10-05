import 'package:get/get.dart';
class RegistrationController extends GetxController {
   final jenisKelamin = RxnString();
   final daftarJenisKelamin = [
    "Men", 
    "Women", 
    "Prefer not to say"];

    final agama = RxnString();
    final daftarAgama = [
      "Islam",
      "Christianity",
      "Catholic",
      "Hindu",
      "Buddhism",
      "Confucianism", 
    ];
}