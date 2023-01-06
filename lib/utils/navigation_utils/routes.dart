import 'package:get/get.dart';
import 'package:task/modules/dashboard/bottom_bar/bottom_bar.dart';
import 'package:task/modules/dashboard/home_page/home_page.dart';

mixin Routes {
  static const defaultTransition = Transition.rightToLeft;
  static const String homePage = "/homePage";
  static const String bottomBar = "/bottomBar";

  static List<GetPage<dynamic>> routes = [
    GetPage<dynamic>(
      name: homePage,
      page: () => const HomePage(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: bottomBar,
      page: () => const BottomBar(),
      transition: defaultTransition,
    ),
  ];
}
