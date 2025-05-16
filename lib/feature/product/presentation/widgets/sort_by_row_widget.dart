import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_text_style.dart';

class SortByRowWidget extends StatelessWidget {
  const SortByRowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52.h,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20).r,
        child: Row(
          children: [
            Text("Sort by", style: AppTextStyle.inter14BlackW500),
            SizedBox(width: 23.w),
            SvgPicture.asset("assets/image/sort.svg"),
            Spacer(),
            Row(
              children: [
                SvgPicture.asset("assets/image/filtter.svg"),
                SizedBox(width: 5.w),
                Text("Filter", style: AppTextStyle.inter14BlackW500),
                SizedBox(width: 20.w),
                SvgPicture.asset("assets/image/gride.svg"),
                SizedBox(width: 20.w),
                SvgPicture.asset("assets/image/peson.svg"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
