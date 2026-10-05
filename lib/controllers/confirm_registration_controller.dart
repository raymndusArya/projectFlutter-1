import 'package:get/get.dart';

class ConfirmRegistrationController extends GetxController {
  late String username;
  late String email;
  late String no_wa;
  late String agama;
  late String nama_lengkap;
  late String jenis_kelamin;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    final arguments = Get.arguments;
    username = arguments["username"];
    email = arguments["email"];
    no_wa = arguments["no_wa"];
    agama = arguments["agama"];
    nama_lengkap = arguments["nama_lengkap"];
    jenis_kelamin = arguments["jenis_kelamin"];
  }
}