import 'package:curved_nav_bar/curved_bar/curved_action_bar.dart';
import 'package:curved_nav_bar/fab_bar/fab_bottom_app_bar_item.dart';
import 'package:curved_nav_bar/flutter_curved_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/modules/dashboard/customers/customber.dart';
import 'package:task/modules/dashboard/home_page/home_page.dart';
import 'package:task/modules/dashboard/khata/customber.dart';
import 'package:task/modules/dashboard/orders/customber.dart';
import 'package:task/res/app_colors.dart';
import 'package:task/res/assets_path.dart';
import 'package:task/utils/size_utils.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CurvedNavBar(
          actionButton: CurvedActionBar(
            onTab: (value) {
              print(value);
            },
            activeIcon: CircleAvatar(
              radius: SizeUtils.horizontalBlockSize * 10,
              backgroundColor: AppColor.textColor,
              child: Icon(
                Icons.add,
                size: SizeUtils.horizontalBlockSize * 10,
                color: AppColor.whiteColor,
              ),
            ),
          ),
          // activeColor: Colors.blue,
          navBarBackgroundColor: AppColor.whiteColor,
          // inActiveColor: Colors.black45,
          appBarItems: [
            FABBottomAppBarItem(
              activeIcon: SvgPicture.asset(AssetsPath.home),
              inActiveIcon: SvgPicture.asset(AssetsPath.home),
              text: 'Home',
            ),
            FABBottomAppBarItem(
              activeIcon: SvgPicture.asset(AssetsPath.custom),
              inActiveIcon: SvgPicture.asset(AssetsPath.custom),
              text: 'Customers',
            ),
            FABBottomAppBarItem(
              activeIcon: SvgPicture.asset(AssetsPath.khata),
              inActiveIcon: SvgPicture.asset(AssetsPath.khata),
              text: 'Khata',
            ),
            FABBottomAppBarItem(
              activeIcon: SvgPicture.asset(AssetsPath.order),
              inActiveIcon: SvgPicture.asset(AssetsPath.order),
              text: 'Orders',
            ),
          ],
          bodyItems: const [
            HomePage(),
            Customers(),
            Khata(),
            Orders(),
          ],
        ),
      ),
    );
  }
}
