import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:runway_fashion_app/core/widget/custom_app_bar_widget.dart';

import '../../data/model/product_model.dart';
import '../widgets/product_item_widget.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String? categoryName =
        ModalRoute.of(context)?.settings.arguments as String?;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBarWidget(
        title: categoryName ?? "",
        actionImage: "assets/image/lock.svg",
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 11.5).r,
        child: GridView.builder(
          physics:BouncingScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
          childAspectRatio: 1/1.6,
          crossAxisSpacing: 5.w
          ),
         itemCount: 16,
          itemBuilder: (context, index) =>

           ProductItemWidget(
            productModel: ProductModel(
              image: "assets/image/man/m1.png",
              name: "Top man black",
              price: "£20",
            ),
          ),
        ),
      ),
    );
  }
}
