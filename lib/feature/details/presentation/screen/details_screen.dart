import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:runway_fashion_app/core/widget/custom_app_bar_widget.dart';

import '../../../product/data/model/product_model.dart';
import '../../../product/presentation/widgets/list_item_product_widget.dart';
import '../../../product/presentation/widgets/sort_by_row_widget.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PassData? categoryName =
    ModalRoute.of(context)?.settings.arguments as PassData;
   ProductModel productModel= categoryName.productModel;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBarWidget(
        title: categoryName.name?? "",
        actionImage: "assets/image/lock.svg",
      ),
      body: Stack(
        children: [
          Column(
            children: [
              SortByRowWidget(),
              SizedBox(height: 15.h,),
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
                    Image.asset(
                      productModel. image,
                    ),
                  ],
                ),
              ),
            ],
          ),
          ProductBottomSheet()
        ],
      ),

    );
  }
}





//
// class DetailsScreen extends StatelessWidget {
//   const DetailsScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final PassData? categoryName =
//     ModalRoute.of(context)?.settings.arguments as PassData?;
//     if (categoryName == null) {
//       return Scaffold(
//         body: Center(child: Text('No data passed')),
//       );
//     }
//     final ProductModel productModel = categoryName.productModel;
//
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: CustomAppBarWidget(
//         title: categoryName.name ?? "",
//         actionImage: "assets/image/lock.svg",
//       ),
//       body: Stack(
//         children: [
//           Column(
//             children: [
//               SortByRowWidget(),
//               SizedBox(height: 15.h),
//               Container(
//                 alignment: Alignment.center,
//                 padding: EdgeInsets.only(bottom: 13.r),
//                 height: 640.h,
//                 decoration: BoxDecoration(
//                   color: const Color(0xffECECEC),
//                   borderRadius: BorderRadius.circular(6.r),
//                 ),
//                 child: Stack(
//                   children: [
//                     Positioned(
//                       bottom: 0,
//                       left: 0,
//                       right: 0,
//                       child: SvgPicture.asset(
//                         "assets/image/man/shadow_under_image.svg",
//                       ),
//                     ),
//                     Image.asset(
//                       productModel.image,
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//           const ProductBottomSheet(),
//         ],
//       ),
//     );
//   }
// }
//
class ProductBottomSheet extends StatelessWidget {
  const ProductBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.18.h,
      minChildSize: 0.18.h,
      maxChildSize: 0.8,
      builder: (context, scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),

          ),
          child: ListView(
            controller: scrollController,
            padding: const EdgeInsets.all(16),
            children: [
            ],
          ),
        );
      },
    );
  }
}



