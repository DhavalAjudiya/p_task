import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/res/app_colors.dart';
import 'package:task/utils/size_utils.dart';

Widget imgContainer({
  String? image,
  double? padding,
  bool isChange = false,
}) {
  return Padding(
    padding: EdgeInsets.only(right: padding ?? 0),
    child: Container(
      decoration: BoxDecoration(
          color: AppColor.whiteColor,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: AppColor.background.withOpacity(0.2),
              blurRadius: 10,
              spreadRadius: 4,
            ),
          ]),
      child: Padding(
        padding:
            isChange ? const EdgeInsets.all(8.0) : const EdgeInsets.all(4.0),
        child: SvgPicture.asset(
          image!,
          height: isChange
              ? SizeUtils.horizontalBlockSize * 10
              : SizeUtils.horizontalBlockSize * 8,
        ),
      ),
    ),
  );
}
