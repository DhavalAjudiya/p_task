import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/res/app_colors.dart';
import 'package:task/res/assets_path.dart';
import 'package:task/res/strings_utils.dart';
import 'package:task/utils/size_utils.dart';
import 'package:task/widget/app_text.dart';

class OrderType extends StatelessWidget {
  const OrderType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: SizeUtils.horizontalBlockSize * 8,
            left: SizeUtils.horizontalBlockSize * 3,
            right: SizeUtils.horizontalBlockSize * 3,
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColor.orders,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: SizeUtils.horizontalBlockSize * 11,
                    bottom: SizeUtils.horizontalBlockSize * 6,
                    left: SizeUtils.horizontalBlockSize * 6,
                    right: SizeUtils.horizontalBlockSize * 8,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CircleAvatar(
                            radius: SizeUtils.horizontalBlockSize * 17,
                            backgroundColor: AppColor.backgroundImage,
                            child: SvgPicture.asset(
                              AssetsPath.orders,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: AppColor.whiteColor,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 15,
                                    spreadRadius: 5,
                                    offset: const Offset(2, 10)),
                              ],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: SizeUtils.horizontalBlockSize * 1,
                                    bottom: SizeUtils.horizontalBlockSize * 8,
                                    left: SizeUtils.horizontalBlockSize * 5,
                                    right: SizeUtils.horizontalBlockSize * 5,
                                  ),
                                  child: Column(
                                    children: [
                                      richText(
                                        text_1: AppString.pending_1,
                                        text_2: AppString.pending_2,
                                        color_1: AppColor.textColor,
                                        color_2:
                                            AppColor.textColor.withOpacity(0.3),
                                        fontWeight_1: FontWeight.w600,
                                        fontWeight_2: FontWeight.w400,
                                        fontSize_1: SizeUtils.fSize_20(),
                                        fontSize_2: SizeUtils.fSize_12(),
                                      ),
                                      AppText(
                                        AppString.pending_3,
                                        color: AppColor.textColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: SizeUtils.fSize_14(),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  bottom: SizeUtils.horizontalBlockSize * -6,
                                  left: SizeUtils.horizontalBlockSize * 5.5,
                                  child: rowImage(
                                    isChange: true,
                                    backgroundColor: AppColor.imageBorder,
                                    backgroundImage_1: AssetsPath.aliya,
                                    backgroundImage_2: AssetsPath.raj,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      const Spacer(),
                      button(
                        text: AppString.orders,
                        color: AppColor.ordersBut,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: SizeUtils.horizontalBlockSize * 8,
                top: SizeUtils.horizontalBlockSize * -3,
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColor.ordersBut,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 15,
                          spreadRadius: 5,
                          offset: const Offset(2, 10)),
                    ],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: SizeUtils.horizontalBlockSize * 1,
                          bottom: SizeUtils.horizontalBlockSize * 8,
                          left: SizeUtils.horizontalBlockSize * 5,
                          right: SizeUtils.horizontalBlockSize * 5,
                        ),
                        child: Column(
                          children: [
                            richText(
                              text_1: AppString.activeOrder,
                              text_2: AppString.activeOrder_1,
                              text_3: AppString.activeOrder_2,
                              color_1: AppColor.whiteColor,
                              color_2: AppColor.whiteColor,
                              color_3: AppColor.whiteColor,
                              fontWeight_1: FontWeight.w400,
                              fontWeight_2: FontWeight.bold,
                              fontWeight_3: FontWeight.w400,
                              fontSize_1: SizeUtils.fSize_16(),
                              fontSize_2: SizeUtils.fSize_20(),
                              fontSize_3: SizeUtils.fSize_16(),
                            ),
                            AppText(
                              AppString.activeOrder_3,
                              color: AppColor.whiteColor,
                              fontWeight: FontWeight.w400,
                              fontSize: SizeUtils.fSize_15(),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: SizeUtils.horizontalBlockSize * -6,
                        left: SizeUtils.horizontalBlockSize * 8.5,
                        child: rowImage(
                          isChange: false,
                          backgroundColor: AppColor.imageBorder,
                          backgroundImage_1: AssetsPath.chaki,
                          backgroundImage_2: AssetsPath.salman,
                          backgroundImage_3: AssetsPath.madhuri,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: SizeUtils.horizontalBlockSize * 8,
            left: SizeUtils.horizontalBlockSize * 3,
            right: SizeUtils.horizontalBlockSize * 3,
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColor.deliver,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: SizeUtils.horizontalBlockSize * 11,
                    bottom: SizeUtils.horizontalBlockSize * 6,
                    left: SizeUtils.horizontalBlockSize * 6,
                    right: SizeUtils.horizontalBlockSize * 5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: SizeUtils.horizontalBlockSize * 17,
                            backgroundColor: AppColor.backgroundImage,
                            child: SvgPicture.asset(
                              fit: BoxFit.cover,
                              AssetsPath.deliver,
                            ),
                          ),
                          const Spacer(),
                          button(
                            text: AppString.subscriptions,
                            color: AppColor.subscriptionsBut,
                            fontSize: SizeUtils.fSize_15(),
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: SizeUtils.horizontalBlockSize * 7,
                              right: SizeUtils.horizontalBlockSize * 5,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColor.whiteColor,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 15,
                                      spreadRadius: 5,
                                      offset: const Offset(2, 10)),
                                ],
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: SizeUtils.horizontalBlockSize * 6,
                                  bottom: SizeUtils.horizontalBlockSize * 2,
                                  left: SizeUtils.horizontalBlockSize * 5,
                                  right: SizeUtils.horizontalBlockSize * 5,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    richText(
                                      text_1: AppString.sPending_1,
                                      text_2: AppString.sPending_2,
                                      color_1: AppColor.textColor,
                                      color_2:
                                          AppColor.textColor.withOpacity(0.3),
                                      fontWeight_1: FontWeight.w600,
                                      fontWeight_2: FontWeight.w400,
                                      fontSize_1: SizeUtils.fSize_20(),
                                      fontSize_2: SizeUtils.fSize_12(),
                                    ),
                                    AppText(
                                      AppString.sPending_3,
                                      color: AppColor.textColor,
                                      fontWeight: FontWeight.w400,
                                      fontSize: SizeUtils.fSize_15(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: EdgeInsets.only(
                              left: SizeUtils.horizontalBlockSize * 5,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColor.whiteColor,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 15,
                                      spreadRadius: 5,
                                      offset: const Offset(2, 10)),
                                ],
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: SizeUtils.horizontalBlockSize * 5,
                                  bottom: SizeUtils.horizontalBlockSize * 2,
                                  left: SizeUtils.horizontalBlockSize * 5,
                                  right: SizeUtils.horizontalBlockSize * 5,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    richText(
                                      text_1: AppString.sSPending_1,
                                      text_2: AppString.sSPending_2,
                                      color_1: AppColor.textColor,
                                      color_2:
                                          AppColor.textColor.withOpacity(0.3),
                                      fontWeight_1: FontWeight.w600,
                                      fontWeight_2: FontWeight.w400,
                                      fontSize_1: SizeUtils.fSize_20(),
                                      fontSize_2: SizeUtils.fSize_12(),
                                    ),
                                    AppText(
                                      AppString.sSPending_3,
                                      color: AppColor.textColor,
                                      fontWeight: FontWeight.w400,
                                      fontSize: SizeUtils.fSize_16(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: SizeUtils.horizontalBlockSize * 10,
                top: SizeUtils.horizontalBlockSize * -3,
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColor.subscriptionsBut,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 15,
                          spreadRadius: 5,
                          offset: const Offset(2, 10)),
                    ],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: SizeUtils.horizontalBlockSize * 2,
                          bottom: SizeUtils.horizontalBlockSize * 8,
                          left: SizeUtils.horizontalBlockSize * 8,
                          right: SizeUtils.horizontalBlockSize * 8,
                        ),
                        child: Column(
                          children: [
                            richText(
                              text_1: AppString.sActiveOrder_1,
                              text_2: AppString.sActiveOrder_2,
                              color_1: AppColor.whiteColor,
                              color_2: AppColor.whiteColor,
                              fontWeight_1: FontWeight.bold,
                              fontWeight_2: FontWeight.w500,
                              fontSize_1: SizeUtils.fSize_20(),
                              fontSize_2: SizeUtils.fSize_15(),
                            ),
                            AppText(
                              "",
                              color: AppColor.whiteColor,
                              fontWeight: FontWeight.w400,
                              fontSize: SizeUtils.fSize_15(),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: SizeUtils.horizontalBlockSize * -6,
                        left: SizeUtils.horizontalBlockSize * 6,
                        child: rowImage(
                          isChange: false,
                          backgroundColor: AppColor.subscriptionsBut,
                          backgroundImage_1: AssetsPath.chaki,
                          backgroundImage_2: AssetsPath.salman,
                          backgroundImage_3: AssetsPath.madhuri,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: SizeUtils.horizontalBlockSize * 8,
            left: SizeUtils.horizontalBlockSize * 3,
            right: SizeUtils.horizontalBlockSize * 3,
          ),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColor.newCustomer,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColor.newCustomer,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: SizeUtils.horizontalBlockSize * 11,
                      bottom: SizeUtils.horizontalBlockSize * 6,
                      left: SizeUtils.horizontalBlockSize * 4,
                      right: SizeUtils.horizontalBlockSize * 5,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              radius: SizeUtils.horizontalBlockSize * 17,
                              backgroundColor: AppColor.backgroundImage,
                              child: SvgPicture.asset(
                                fit: BoxFit.cover,
                                AssetsPath.newCustomer,
                              ),
                            ),
                            const Spacer(),
                            button(
                              text: AppString.viewCustomer,
                              color: AppColor.viewCustomerBut,
                              fontSize: SizeUtils.fSize_13(),
                              fontWeight: FontWeight.w600,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: SizeUtils.horizontalBlockSize * 9,
                                left: SizeUtils.horizontalBlockSize * 10,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColor.whiteColor,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        blurRadius: 15,
                                        spreadRadius: 5,
                                        offset: const Offset(2, 10)),
                                  ],
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: SizeUtils.horizontalBlockSize * 2,
                                    bottom: SizeUtils.horizontalBlockSize * 0,
                                    left: SizeUtils.horizontalBlockSize * 5,
                                    right: SizeUtils.horizontalBlockSize * 0,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          AppText(
                                            AppString.vSPending_1,
                                            color: AppColor.textColor,
                                            fontWeight: FontWeight.w700,
                                            fontSize: SizeUtils.fSize_20(),
                                          ),
                                          Image.asset(
                                            AssetsPath.up,
                                            height:
                                                SizeUtils.horizontalBlockSize *
                                                    8,
                                          ),
                                        ],
                                      ),
                                      Image.asset(
                                        AssetsPath.graph,
                                        height:
                                            SizeUtils.horizontalBlockSize * 8,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const Spacer(),
                            Padding(
                              padding: EdgeInsets.only(
                                right: SizeUtils.horizontalBlockSize * 14,
                              ),
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: AppColor.whiteColor,
                                      boxShadow: [
                                        BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.1),
                                            blurRadius: 15,
                                            spreadRadius: 5,
                                            offset: const Offset(2, 10)),
                                      ],
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        top: SizeUtils.horizontalBlockSize * 5,
                                        bottom:
                                            SizeUtils.horizontalBlockSize * 2,
                                        left: SizeUtils.horizontalBlockSize * 3,
                                        right:
                                            SizeUtils.horizontalBlockSize * 9,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            children: [
                                              richText(
                                                text_1: AppString.vPending_1,
                                                text_2: AppString.vPending_2,
                                                color_1: AppColor.textColor,
                                                color_2: AppColor.textColor
                                                    .withOpacity(0.3),
                                                fontWeight_1: FontWeight.w600,
                                                fontWeight_2: FontWeight.w400,
                                                fontSize_1:
                                                    SizeUtils.fSize_20(),
                                                fontSize_2:
                                                    SizeUtils.fSize_12(),
                                              ),
                                            ],
                                          ),
                                          AppText(
                                            AppString.vPending_3,
                                            color: AppColor.textColor,
                                            fontWeight: FontWeight.w400,
                                            fontSize: SizeUtils.fSize_16(),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: SizeUtils.horizontalBlockSize * 4,
                                    right: SizeUtils.horizontalBlockSize * -1,
                                    child: rowImage(
                                      isDot: true,
                                      backgroundColor: AppColor.imageBorder_3,
                                      backgroundImage_1: AssetsPath.chaki,
                                      backgroundImage_2: AssetsPath.salman,
                                      backgroundImage_3: AssetsPath.madhuri,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: SizeUtils.horizontalBlockSize * 8,
                  top: SizeUtils.horizontalBlockSize * -3,
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColor.viewCustomerBut,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 15,
                            spreadRadius: 5,
                            offset: const Offset(2, 10)),
                      ],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: SizeUtils.horizontalBlockSize * 2,
                            bottom: SizeUtils.horizontalBlockSize * 7,
                            left: SizeUtils.horizontalBlockSize * 4,
                            right: SizeUtils.horizontalBlockSize * 4,
                          ),
                          child: Column(
                            children: [
                              richText(
                                text_1: AppString.vActiveOrder_1,
                                text_2: AppString.vActiveOrder_2,
                                color_1: AppColor.whiteColor,
                                color_2: AppColor.whiteColor,
                                fontWeight_1: FontWeight.bold,
                                fontWeight_2: FontWeight.w500,
                                fontSize_1: SizeUtils.fSize_20(),
                                fontSize_2: SizeUtils.fSize_15(),
                              ),
                              AppText(
                                "",
                                color: AppColor.whiteColor,
                                fontWeight: FontWeight.w400,
                                fontSize: SizeUtils.fSize_15(),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: SizeUtils.horizontalBlockSize * -5,
                          left: SizeUtils.horizontalBlockSize * 7.5,
                          child: rowImage(
                            isChange: false,
                            isAdd: false,
                            backgroundColor: AppColor.imageBorder_3,
                            backgroundImage_1: AssetsPath.chaki,
                            backgroundImage_2: AssetsPath.salman,
                            backgroundImage_3: AssetsPath.madhuri,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget button({
    final String text = " ",
    final Color? color,
    final FontWeight? fontWeight,
    final double? fontSize,
    final double? width,
  }) {
    return Container(
      alignment: Alignment.center,
      width: width ?? SizeUtils.horizontalBlockSize * 33,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: SizeUtils.horizontalBlockSize * 2,
          // horizontal: SizeUtils.horizontalBlockSize * 5,
        ),
        child: AppText(
          text,
          color: AppColor.whiteColor,
          fontSize: fontSize ?? SizeUtils.fSize_17(),
          fontWeight: fontWeight ?? FontWeight.normal,
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
    bool isAdd = true,
    bool isDot = false,
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
              left: SizeUtils.horizontalBlockSize * 9,
              child: CircleAvatar(
                radius: SizeUtils.horizontalBlockSize * 6,
                backgroundColor: backgroundColor,
                child: CircleAvatar(
                  backgroundImage: AssetImage(backgroundImage_2),
                ),
              ),
            ),
            Positioned(
              left: SizeUtils.horizontalBlockSize * 18,
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
            Positioned(
              top: SizeUtils.horizontalBlockSize * 3.7,
              left: SizeUtils.horizontalBlockSize * 27,
              child: isAdd == true
                  ? const SizedBox()
                  : CircleAvatar(
                      radius: SizeUtils.horizontalBlockSize * 2.5,
                      backgroundColor: AppColor.whiteColor,
                      child: Icon(
                        Icons.add,
                        color: AppColor.textColor,
                        size: SizeUtils.horizontalBlockSize * 3.5,
                      ),
                    ),
            ),
            Positioned(
              left: SizeUtils.horizontalBlockSize * 7,
              top: SizeUtils.horizontalBlockSize * 9,
              child: isDot == false
                  ? const SizedBox()
                  : CircleAvatar(
                      radius: SizeUtils.horizontalBlockSize * 1.2,
                      backgroundColor: AppColor.imageDot,
                    ),
            ),
            Positioned(
              left: SizeUtils.horizontalBlockSize * 16.5,
              top: SizeUtils.horizontalBlockSize * 9,
              child: isDot == false
                  ? const SizedBox()
                  : CircleAvatar(
                      radius: SizeUtils.horizontalBlockSize * 1.2,
                      backgroundColor: AppColor.imageDot,
                    ),
            ),
            Positioned(
              left: SizeUtils.horizontalBlockSize * 26,
              top: SizeUtils.horizontalBlockSize * 9,
              child: isDot == false
                  ? const SizedBox()
                  : CircleAvatar(
                      radius: SizeUtils.horizontalBlockSize * 1.2,
                      backgroundColor: AppColor.imageDot,
                    ),
            ),
          ],
        ),
      ],
    );
  }
}
