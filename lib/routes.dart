import 'package:get/get.dart';
import 'package:project1/pages/calculator_page.dart';
import 'package:project1/pages/confirm_registration_page.dart';
import 'package:project1/pages/registration_page.dart';
import 'package:project1/pages/kalkulator_page.dart';


class Routes {
  static  String registration = "/registration";
  static const String confirmRegistration = "/confirm-registration";
  static const String calculator = "/calculator";
  static const String kalkulator = "/kalkulator";

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
  ];  
}