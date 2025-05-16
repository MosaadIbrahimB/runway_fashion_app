import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_text_style.dart';
import '../../data/model/product_model.dart';

class ProductDetailsWidget extends StatelessWidget {
  const ProductDetailsWidget({super.key, required this.productModel});
  final   ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.5).r,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            productModel.name,
            style: AppTextStyle.inter14BlackW500,
            maxLines: 1,
            overflow: TextOverflow.clip,
          ),
          SizedBox(height: 7.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                productModel.price,
                style: AppTextStyle.inter16BlackW700,
              ),
              Icon(Icons.favorite_border),
            ],
          ),
        ],
      ),
    );
  }
}
