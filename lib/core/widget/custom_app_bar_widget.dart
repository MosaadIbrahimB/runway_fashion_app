import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/app_text_style.dart';

class CustomAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBarWidget({super.key, required this.title, this.leadingImage,  required this.actionImage});
final String title;
 final String ?leadingImage;
final String actionImage;

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      scrolledUnderElevation: 0,
      leading:leadingImage!=null? SizedBox():null,
      leadingWidth: leadingImage!=null?0:56.0.w,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          leadingImage!=null?  SvgPicture.asset(leadingImage??""):SizedBox(),
          Text(title,style: AppTextStyle.inter18BlackW700,),
          SvgPicture.asset(actionImage),

        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(77.h);
}

