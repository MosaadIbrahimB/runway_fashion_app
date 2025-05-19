import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_text_style.dart';
import '../../data/free_delivery_model.dart';
import 'free_delivery_widget.dart';

class DivFreeDeliveryAndAboutWidget extends StatelessWidget {
  DivFreeDeliveryAndAboutWidget({super.key});

  final List<FreeDeliveryModel> freeList = [
    FreeDeliveryModel(
      title: "Free delivery",
      pathImage: "assets/image/delivery/free_delivery.png",
    ),

    FreeDeliveryModel(
      borderT: false,
      title: "Free return",
      pathImage: "assets/image/delivery/free_return.png",
      widget: Text(
        "View return policy",
        style: AppTextStyle.inter14BlackW500.copyWith(color: Color(0xff999797)),
      ),
    ),
  ];
  final List<FreeDeliveryModel> aboutList = [
    FreeDeliveryModel(
      title: "Product details",
      pathImage: "assets/image/delivery/product_details.png",
      widget: Icon(Icons.keyboard_arrow_up, color: Color(0xff919191)),
    ),
    FreeDeliveryModel(
      borderT: false,
      title: "Brand",
      pathImage: "assets/image/delivery/brand.png",
      widget: Icon(Icons.keyboard_arrow_down, color: Color(0xff919191)),
    ),
    FreeDeliveryModel(
      borderT: false,
      title: "Size and fit",
      pathImage: "assets/image/delivery/size_and_fit.png",
      widget: Icon(Icons.keyboard_arrow_down, color: Color(0xff919191)),
    ),
    FreeDeliveryModel(
      borderT: false,
      title: "History",
      pathImage: "assets/image/delivery/history.png",
      widget: Icon(Icons.keyboard_arrow_down, color: Color(0xff919191)),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children:
              freeList
                  .map((e) => FreeDeliveryWidget(freeDeliveryModel: e))
                  .toList(),
        ),
        SizedBox(height: 20.h),
        Text(
          "About product",
          style: AppTextStyle.inter16BlackW700.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 10.h),

        Column(
          children:
              aboutList
                  .map((e) => FreeDeliveryWidget(freeDeliveryModel: e))
                  .toList(),
        ),
      ],
    );
  }
}
