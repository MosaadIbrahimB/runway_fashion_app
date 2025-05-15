import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_text_style.dart';

class LogoAnimatedWidget extends StatelessWidget {
  const LogoAnimatedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text("Runway", style:  AppTextStyle.inter48BlackW700),
            TweenAnimationBuilder(
              tween: Tween<double>(begin: 0.0, end: 179.0.w),
              duration: Duration(seconds: 4),
              builder: (context, value, child) {
                return SizedBox(
                  width: 179.w,// عشان يكون فى النص
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      width: value,
                      child: SvgPicture.asset(
                        fit: BoxFit.fill,
                        "assets/image/line_under_runway.svg",
                      ),
                    ),
                  ),
                );
              },
            ),


          ],
        ),
      ),
    );
  }
}
