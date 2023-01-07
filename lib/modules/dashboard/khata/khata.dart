import 'package:flutter/material.dart';
import 'package:task/res/app_colors.dart';
import 'package:task/res/strings_utils.dart';
import 'package:task/utils/size_utils.dart';
import 'package:task/widget/app_text.dart';

class Khata extends StatelessWidget {
  const Khata({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AppText(
          AppString.khata,
          fontSize: SizeUtils.fSize_36(),
          color: AppColor.textColor,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
