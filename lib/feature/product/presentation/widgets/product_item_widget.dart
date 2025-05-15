import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:runway_fashion_app/feature/product/data/model/product_model.dart';

import '../../../../core/utils/app_text_style.dart';

class ProductItemWidget extends StatelessWidget {
  const ProductItemWidget({super.key, required this.productModel});

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
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
                  Image.asset(productModel.image),

                ],
              ),
            ),
          ),
          SizedBox(height: 14.h,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.5).r,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(productModel.name, style: AppTextStyle.inter14BlackW500),
                SizedBox(height: 7.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(productModel.price, style: AppTextStyle.inter16BlackW700),
                    Icon(Icons.favorite_border)

                  ],
                )
              ],),
          )
        ],
      ),
    );
  }
}
