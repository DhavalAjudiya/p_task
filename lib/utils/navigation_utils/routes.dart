import 'package:get/get.dart';
import 'package:task/modules/dashboard/home_page/home_page.dart';

mixin Routes {
  static const defaultTransition = Transition.rightToLeft;
  static const String homePage = "/homePage";

  static List<GetPage<dynamic>> routes = [
    GetPage<dynamic>(
      name: homePage,
      page: () => HomePage(),
      transition: defaultTransition,
    ),
  ];
}
