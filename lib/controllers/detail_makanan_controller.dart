import 'package:get/get.dart';
import 'package:project1/models/makanan_model.dart';

class DetailMakananController extends GetxController {
  late final MakananModel makanan;

  @override
  void onInit() {
    super.onInit();
    makanan = Get.arguments as MakananModel;
  }
}