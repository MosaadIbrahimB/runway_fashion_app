import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:runway_fashion_app/feature/home/data/model/category_model.dart';

import 'item_category_widget.dart';

class ListCategoryWidget extends StatelessWidget {
  ListCategoryWidget({
    super.key,
  });

  final List<CategoryModel> listCategory = [
    CategoryModel(name: "Woman", image: "assets/image/categories/woman.png"),
    CategoryModel(name: "Man", image: "assets/image/categories/man.png"),
    CategoryModel(name: "Kids", image: "assets/image/categories/kids.png"),
    CategoryModel(name: "Deals", image: "assets/image/categories/deals.png"),
    CategoryModel(name: "Home", image: "assets/image/categories/home.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          listCategory.length,
              (index) => Container(
            padding: EdgeInsets.symmetric(vertical: 10).r,
            child: ItemCategoryWidget(
              categoryModel: listCategory[index],
            ),
          ),
        ),
      ),
    );
  }
}
