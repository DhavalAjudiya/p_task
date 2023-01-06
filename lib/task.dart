import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:task/utils/app_binding.dart';
import 'package:task/utils/my_behavior.dart';
import 'package:task/utils/navigation_utils/routes.dart';
import 'package:task/utils/size_utils.dart';

class TaskApp extends StatelessWidget {
  const TaskApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
    ));
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ],
    );
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: AppBinding(),
      theme: ThemeData(
        brightness: Brightness.light,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        disabledColor: Colors.transparent,
      ),
      initialRoute: Routes.homePage,
      getPages: Routes.routes,
      builder: (context, child) {
        SizeUtils().init(context);
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: ScrollConfiguration(
            behavior: MyBehavior(),
            child: child!,
          ),
        );
      },
    );
  }
}
