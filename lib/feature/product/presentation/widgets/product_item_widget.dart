import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:runway_fashion_app/feature/product/data/model/product_model.dart';
import 'package:runway_fashion_app/feature/product/presentation/widgets/product_details_widget.dart';

import 'card_image_widget.dart';

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
          CardImageWidget(image: productModel.image),
          SizedBox(height: 14.h),
          ProductDetailsWidget(productModel: productModel)
        ],
      ),
    );
  }
}


