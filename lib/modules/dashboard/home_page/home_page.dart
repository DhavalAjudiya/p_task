import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:task/calendar/common_date_picker.dart';
import 'package:task/calendar/workout_controller.dart';
import 'package:task/modules/dashboard/home_page/widget/header_image.dart';
import 'package:task/modules/dashboard/home_page/widget/ordertype.dart';
import 'package:task/res/app_colors.dart';
import 'package:task/res/assets_path.dart';
import 'package:task/res/strings_utils.dart';
import 'package:task/utils/size_utils.dart';
import 'package:task/widget/app_text.dart';

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
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: SizeUtils.horizontalBlockSize * 3,
                ),
                child: Row(
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
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: SizeUtils.horizontalBlockSize * 3,
                    right: SizeUtils.horizontalBlockSize * 3,
                    top: SizeUtils.horizontalBlockSize * 8),
                child: Row(
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
              ),
              SizedBox(
                height: SizeUtils.verticalBlockSize * 33,
                child: OrderType(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeUtils.horizontalBlockSize * 3,
                    vertical: SizeUtils.horizontalBlockSize * 1),
                child: CommonDatePicker(
                  onSelectionChanged: (args) {
                    SchedulerBinding.instance.addPostFrameCallback((duration) {
                      workoutController.pushUpDate.value =
                          DateFormat('dd, MMMM yyyy')
                              .format(args.value)
                              .toString();
                      print('date--->${workoutController.pushUpDate.value}');
                    });
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: SizeUtils.horizontalBlockSize * 3,
                  horizontal: SizeUtils.horizontalBlockSize * 4,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColor.whiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: AppColor.background.withOpacity(0.2),
                        blurRadius: 5,
                        spreadRadius: 1,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: SizeUtils.horizontalBlockSize * 3,
                      horizontal: SizeUtils.horizontalBlockSize * 4,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: SizeUtils.horizontalBlockSize * 2),
                              child: AppText(
                                AppString.newOrder,
                                color: AppColor.textColor,
                                fontWeight: FontWeight.w500,
                                fontSize: SizeUtils.fSize_18(),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: SizeUtils.horizontalBlockSize * 2),
                              child: AppText(
                                AppString.sNewOrder,
                                fontSize: SizeUtils.fSize_15(),
                              ),
                            ),
                            AppText(
                              AppString.time,
                              color: AppColor.time,
                              fontSize: SizeUtils.fSize_15(),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: SizeUtils.horizontalBlockSize * 2),
                              child: const Icon(
                                Icons.arrow_forward,
                                color: AppColor.time,
                              ),
                            ),
                          ],
                        ),
                        CircleAvatar(
                          radius: SizeUtils.horizontalBlockSize * 9,
                          backgroundColor: AppColor.time,
                          child: SvgPicture.asset(AssetsPath.newOrder),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //---------
  Widget button({
    final String text = "",
    final Color? color,
  }) {
    return Container(
      alignment: Alignment.center,
      width: SizeUtils.horizontalBlockSize * 33,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: SizeUtils.horizontalBlockSize * 2,
          // horizontal: SizeUtils.horizontalBlockSize * 5,
        ),
        child: AppText(
          text,
          color: AppColor.whiteColor,
          fontSize: SizeUtils.fSize_17(),
        ),
      ),
    );
  }

  Widget richText({
    final String text_1 = "",
    final Color? color_1,
    final FontWeight? fontWeight_1,
    final double? fontSize_1,
    final String text_2 = "",
    final Color? color_2,
    final FontWeight? fontWeight_2,
    final double? fontSize_2,
    final String text_3 = "",
    final Color? color_3,
    final FontWeight? fontWeight_3,
    final double? fontSize_3,
  }) {
    return RichText(
      text: TextSpan(
        text: text_1,
        style: TextStyle(
          fontWeight: fontWeight_1,
          fontSize: fontSize_1,
          color: color_1,
        ),
        children: [
          TextSpan(
            text: text_2,
            style: TextStyle(
              fontWeight: fontWeight_2,
              fontSize: fontSize_2,
              color: color_2,
            ),
          ),
          TextSpan(
            text: text_3,
            style: TextStyle(
              fontWeight: fontWeight_3,
              fontSize: fontSize_3,
              color: color_3,
            ),
          ),
        ],
      ),
    );
  }

  Widget rowImage({
    bool isChange = false,
    final Color? backgroundColor,
    final String backgroundImage_1 = "",
    final String backgroundImage_2 = "",
    final String backgroundImage_3 = "",
  }) {
    return Row(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            CircleAvatar(
              radius: SizeUtils.horizontalBlockSize * 6,
              backgroundColor: backgroundColor,
              child: CircleAvatar(
                backgroundImage: AssetImage(backgroundImage_1),
              ),
            ),
            Positioned(
              left: SizeUtils.horizontalBlockSize * 7,
              child: CircleAvatar(
                radius: SizeUtils.horizontalBlockSize * 6,
                backgroundColor: backgroundColor,
                child: CircleAvatar(
                  backgroundImage: AssetImage(backgroundImage_2),
                ),
              ),
            ),
            Positioned(
              left: SizeUtils.horizontalBlockSize * 14,
              child: isChange == true
                  ? const SizedBox()
                  : CircleAvatar(
                      radius: SizeUtils.horizontalBlockSize * 6,
                      backgroundColor: backgroundColor,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(backgroundImage_3),
                      ),
                    ),
            ),
          ],
        ),
      ],
    );
  }
}
