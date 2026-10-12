import 'package:get/get.dart';
import 'package:project1/pages/calculator_page.dart';
import 'package:project1/pages/confirm_registration_page.dart';
import 'package:project1/pages/registration_page.dart';
import 'package:project1/pages/kalkulator_page.dart';
import 'package:project1/pages/list_makanan_page.dart';
import 'package:project1/pages/detail_makanan_pages.dart';


class Routes {
  static  String registration = "/registration";
  static const String confirmRegistration = "/confirm-registration";
  static const String calculator = "/calculator";
  static const String kalkulator = "/kalkulator";
  static const String listMakanan = "/list-makanan";
  static const String detailMakanan = "/detail-makanan";

  static final myPages = [
    GetPage(  
      name: registration,
      page: () => RegistrationPage(),
    ),
    GetPage(
      name: confirmRegistration,
      page: () => ConfirmRegistrationPage(),
    ),
    GetPage(
      name: calculator,
      page: () => CalculatorPage(),
    ),
    GetPage(
      name: kalkulator,
      page: () => KalkulatorPage(),
    ),
    GetPage(
      name: Routes.listMakanan,
      page: () => ListMakananPage(),
    ),
    GetPage(
      name: '/detail-makanan',
      page: () => DetailMakananPage(),
    ),
  ];  
}