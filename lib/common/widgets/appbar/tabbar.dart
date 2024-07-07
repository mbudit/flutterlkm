import 'package:flutter/material.dart';
import 'package:flutterlkm/utils/constants/colors.dart';
import 'package:flutterlkm/utils/device/device_utility.dart';
import 'package:flutterlkm/utils/helpers/helper_functions.dart';

/// Bikin kelas baru TTabBar untuk TabBar biar bisa make background color, terus harus diwrap pake widget Material.
/// Karena TabBar itu pake widget PreferedSizeWidget, kita bikin kelas custom dengan mengimplementasikan widget PreferredSizeWidget
class TTabBar extends StatelessWidget implements PreferredSizeWidget {
  const TTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? TColors.black : TColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: TColors.appPrimary,
        labelColor: dark ? TColors.white : TColors.black,
        unselectedLabelColor: TColors.darkGrey,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
