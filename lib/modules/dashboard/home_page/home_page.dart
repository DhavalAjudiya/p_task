import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:task/calendar/common_date_picker.dart';
import 'package:task/calendar/workout_controller.dart';
import 'package:task/res/app_colors.dart';
import 'package:task/res/assets_path.dart';
import 'package:task/res/strings_utils.dart';
import 'package:task/utils/size_utils.dart';
import 'package:task/widget/app_text.dart';
import 'package:task/modules/dashboard/home_page/widget/header_image.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  WorkoutController workoutController = Get.put(WorkoutController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: SizeUtils.horizontalBlockSize * 3,
            left: SizeUtils.horizontalBlockSize * 5,
            right: SizeUtils.horizontalBlockSize * 5,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  imgContainer(
                    image: AssetsPath.manu,
                  ),
                  const Spacer(),
                  imgContainer(
                    image: AssetsPath.fav,
                    padding: SizeUtils.horizontalBlockSize * 5,
                  ),
                  imgContainer(
                    image: AssetsPath.notification,
                    padding: SizeUtils.horizontalBlockSize * 5,
                  ),
                  imgContainer(
                    image: AssetsPath.user,
                  ),
                ],
              ),
              SizedBox(
                height: SizeUtils.horizontalBlockSize * 8,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(
                        AppString.headerText,
                        color: AppColor.textColor,
                        fontWeight: FontWeight.w500,
                        fontSize: SizeUtils.fSize_20(),
                      ),
                      AppText(
                        AppString.headerSubtext,
                        color: AppColor.textColor.withOpacity(0.7),
                        fontSize: SizeUtils.fSize_14(),
                      ),
                    ],
                  ),
                  const Spacer(),
                  imgContainer(
                    image: AssetsPath.search,
                    isChange: true,
                  ),
                ],
              ),
              CommonDatePicker(
                onSelectionChanged: (args) {
                  SchedulerBinding.instance.addPostFrameCallback((duration) {
                    workoutController.pushUpDate.value = DateFormat('dd, MMMM yyyy').format(args.value).toString();
                    print('date--->${workoutController.pushUpDate.value}');
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
