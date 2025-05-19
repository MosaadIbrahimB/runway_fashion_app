import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:runway_fashion_app/core/utils/app_text_style.dart';
import 'package:runway_fashion_app/feature/details/data/free_delivery_model.dart';
import 'package:runway_fashion_app/feature/details/presentation/widget/select_color_widget.dart';
import '../../../../core/configure/route/app_route.dart';
import '../../../product/data/model/product_model.dart';
import '../../../product/data/repo/repo.dart';
import '../../../product/presentation/widgets/list_item_product_widget.dart';
import '../../../product/presentation/widgets/product_details_widget.dart';
import '../../../product/presentation/widgets/product_item_widget.dart';
import 'button_add_to_bag_widget.dart';
import 'div_free_delivery_and_about_widget.dart';
import 'div_horizontal_widget.dart';
import 'free_delivery_widget.dart';

class ProductBottomSheet extends StatelessWidget {
  const ProductBottomSheet({super.key, required this.productModel});

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.25.h,
      minChildSize: 0.25.h,
      maxChildSize: 0.8,
      builder: (context, scrollController) {
        List<ProductModel> listProductModel = Repo.listProductModel;
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
          ),
          child: ListView(
            controller: scrollController,
            padding: const EdgeInsets.all(16),
            children: [
              DivHorizontalWidget(),
              SizedBox(height: 10.h),
              ProductDetailsWidget(productModel: productModel),
              SizedBox(height: 23.h),
              SelectColorWidget(),
              SizedBox(height: 10.h),
              ButtonAddToBagWidget(),
              SizedBox(height: 10.h),
              DivFreeDeliveryAndAboutWidget(),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "You might also like",
                    style: AppTextStyle.inter14BlackW500,
                  ),
                  Text("View all", style: AppTextStyle.inter14BlackW500),
                ],
              ),
              SizedBox(height: 20.h),
              SizedBox(
                  height: 350.h,
                  child:  ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder:
                        (context, index) => Padding(
                          padding: const EdgeInsets.all(8.0).r,
                          child: ProductItemWidget(productModel: listProductModel[index]),
                        ),
                  ),),
              SizedBox(height: 20.h),



            ],
          ),
        );
      },
    );
  }
}
