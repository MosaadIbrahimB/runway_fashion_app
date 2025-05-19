import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class DivHorizontalWidget extends StatelessWidget {
  const DivHorizontalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return               Align(
      alignment: Alignment.center,
      child: Container(
        height: 6.w,
        width: 42.h,
        decoration: BoxDecoration(
          color: Color(0xffD9D9D9),
          borderRadius: BorderRadius.circular(6).r,
        ),
      ),
    );
    ;
  }
}
