import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:runway_fashion_app/core/utils/app_text_style.dart';

class CustomBadgeWidget extends StatelessWidget {
  const CustomBadgeWidget({
    super.key, this.child,
  });
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: badges.Badge(
        badgeAnimation: badges.BadgeAnimation.scale(
          animationDuration: Duration(milliseconds: 300),
          loopAnimation: false,
        ),
        position:badges. BadgePosition.topEnd(top: -14.h,end: -7.w),
        badgeContent: Text(
          "${5}",
          style: AppTextStyle.inter16BlackW700.copyWith(
            fontSize: 12.sp,
            fontWeight: FontWeight.normal,
            color: Colors.white
          ),
        ),

        badgeStyle: badges.BadgeStyle(
          shape: badges.BadgeShape.circle,
          badgeColor: Colors.red,
          padding: EdgeInsets.all(6).r,
        ),
        child: child,
      ),
    );
  }
}
