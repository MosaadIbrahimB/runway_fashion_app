import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:runway_fashion_app/core/configure/route/app_route.dart';
import 'package:runway_fashion_app/feature/product/presentation/widgets/product_item_widget.dart';
import '../../data/model/product_model.dart';
import '../../data/repo/repo.dart';

class ListItemProductWidget extends StatelessWidget {
  const ListItemProductWidget({super.key, this.name});
final String?name;
  @override
  Widget build(BuildContext context) {
    List<ProductModel> listProductModel = Repo.listProductModel;
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 11.5).r,
        child: GridView.builder(
          itemCount: listProductModel.length,
          physics: BouncingScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1 / 1.6,
            crossAxisSpacing: 5.w,
            mainAxisSpacing: 20.h,
          ),
          itemBuilder:
              (context, index) => GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    AppRoute.details,
                    arguments: PassData(name: name??"",productModel: listProductModel[index]),
                  );
                },
                child: ProductItemWidget(productModel: listProductModel[index]),
              ),
        ),
      ),
    );
  }
}

class PassData{
  final String name;
  final ProductModel productModel;

  PassData({required this.name, required this.productModel});

}