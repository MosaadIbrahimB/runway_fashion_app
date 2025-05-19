import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_text_style.dart';
class SelectColorWidget extends StatelessWidget {
  const SelectColorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8).r,
      height: 55.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6).r,
          border: Border.all(
              color: Color(0xffECECEC),
              width: 1
          )
      ),
      child: Row(
        children: [
          Text("Select colour", style: AppTextStyle.inter14BlackW500),
          SizedBox(width: 23.w),
          SvgPicture.asset("assets/image/sort.svg"),
          Expanded(
            child: Center(
              child: Container(
                height: 31.h,
                width: 1.w,
                color: Color(0xffD9D9D9),
              ),
            ),
          ),
          Row(
            children: [
              Text("Select size", style: AppTextStyle.inter14BlackW500),
              SizedBox(width: 20.w),
              SvgPicture.asset("assets/image/sort.svg"),

            ],
          ),
        ],
      ),
    );
  }
}
