import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:runway_fashion_app/core/configure/route/app_route.dart';
import 'package:runway_fashion_app/core/utils/app_text_style.dart';
import '../../data/model/category_model.dart';

class ItemCategoryWidget extends StatelessWidget {
  const ItemCategoryWidget({super.key, required this.categoryModel});

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print(categoryModel.name);
        Navigator.pushReplacementNamed(
            context, AppRoute.product, arguments: categoryModel.name);
      },
      child: SizedBox(
        height: 127.h,
        width: 95.w,
        child: Column(
          children: [
            ClipOval(
              child: Image.asset(
                categoryModel.image,
                fit: BoxFit.cover,
                width: 75.r,
                height: 75.r,
                // color: Colors.white,
              ),
            ),
            SizedBox(height: 15.h),
            Text(
              categoryModel.name,
              style: AppTextStyle.inter16BlackW700.copyWith(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: Color(0xff131313),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
