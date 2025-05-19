import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_text_style.dart';

class ButtonAddToBagWidget extends StatelessWidget {
  const ButtonAddToBagWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 55.h,
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(8).r
      ),
      child: Text("ADD TO BAG",style: AppTextStyle.inter16BlackW700.copyWith(
          color: Colors.white
      ),),
    );
  }
}
