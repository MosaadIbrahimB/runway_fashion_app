import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:runway_fashion_app/core/utils/app_text_style.dart';
import 'package:runway_fashion_app/core/widget/custom_app_bar_widget.dart';

import '../../../product/data/model/product_model.dart';
import '../../../product/presentation/widgets/list_item_product_widget.dart';
import '../../../product/presentation/widgets/product_details_widget.dart';
import '../../../product/presentation/widgets/sort_by_row_widget.dart';
import '../widget/product_bottom_sheet.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PassData? categoryName =
        ModalRoute.of(context)?.settings.arguments as PassData;
    ProductModel productModel = categoryName.productModel;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBarWidget(
        title: categoryName.name ?? "",
        actionImage: "assets/image/lock.svg",
      ),
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(height: 15.h),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(bottom: 13.r),
                height: 640.h,
                decoration: BoxDecoration(
                  color: Color(0xffECECEC),
                  borderRadius: BorderRadius.circular(6.r),
                ),
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
            ],
          ),
          ProductBottomSheet(productModel: productModel),
        ],
      ),
    );
  }
}

