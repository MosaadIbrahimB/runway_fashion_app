import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CardImageWidget extends StatelessWidget {
  const CardImageWidget({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return  Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(bottom: 13.r),
      width: 200.w,
      height: 255.h,
      decoration: BoxDecoration(
        color: Color(0xffECECEC),
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: SizedBox(
        width: 115.42.w,
        height: 242.h,
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: SvgPicture.asset(
                "assets/image/man/shadow_under_image.svg",
              ),
            ),
            Image.asset(
              image,
              height: 242.h,
              width: 115.42.w,
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
    );
  }
}
