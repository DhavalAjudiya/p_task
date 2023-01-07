import 'package:flutter/material.dart';
import 'package:task/res/app_colors.dart';
import 'package:task/res/assets_path.dart';
import 'package:task/res/strings_utils.dart';

class HomeModal {
  final String? image;
  final String? type;
  final String? text_1;
  final String? text_2;
  final String? text_3;
  final String? subText_1;
  final String? subText_2;
  final String? subText_3;
  final Color? color;
  final Color? buttonColor;

  HomeModal({
    this.image,
    this.type,
    this.color,
    this.buttonColor,
    this.text_1,
    this.text_2,
    this.text_3,
    this.subText_1,
    this.subText_2,
    this.subText_3,
  });
}

final homeList = [
  HomeModal(
    image: AssetsPath.orders,
    color: AppColor.orders,
    type: AppString.orders,
    buttonColor: AppColor.ordersBut,
    text_1: AppString.activeOrder,
    text_2: AppString.activeOrder_1,
    text_3: AppString.activeOrder_2,
    subText_1: AppString.pending_1,
    subText_2: AppString.pending_2,
    subText_3: AppString.pending_3,
  ),
  HomeModal(
    image: AssetsPath.deliver,
    color: AppColor.deliver,
    type: AppString.subscriptions,
    buttonColor: AppColor.subscriptionsBut,
    text_1: AppString.sActiveOrder,
    text_2: AppString.sActiveOrder_1,
    text_3: AppString.sActiveOrder_2,
    subText_1: AppString.sPending_1,
    subText_2: AppString.sPending_2,
    subText_3: AppString.sPending_3,
  ),
  HomeModal(
    image: AssetsPath.newCustomer,
    color: AppColor.newCustomer,
    type: AppString.viewCustomer,
    buttonColor: AppColor.viewCustomerBut,
    text_1: AppString.vActiveOrder,
    text_2: AppString.vActiveOrder_1,
    text_3: AppString.vActiveOrder_2,
    subText_1: AppString.vPending_1,
    subText_2: AppString.vPending_2,
    subText_3: AppString.vPending_3,
  ),
];
