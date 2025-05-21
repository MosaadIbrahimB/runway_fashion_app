import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:runway_fashion_app/core/configure/route/app_route.dart';
import 'package:runway_fashion_app/core/widget/custom_app_bar_widget.dart';
import 'package:runway_fashion_app/feature/product/data/model/product_model.dart';
import '../widgets/list_item_product_widget.dart';
import '../widgets/sort_by_row_widget.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String? categoryName =
        ModalRoute.of(context)?.settings.arguments as String?;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBarWidget(
       leading: IconButton(onPressed: () {
         Navigator.pushReplacementNamed(context, AppRoute.home);
       }, icon: Icon(Icons.arrow_back)),
        title: categoryName ?? "",
        actionImage: "assets/image/lock.svg",
      ),
      body: Column(
        children: [
          SortByRowWidget(),
        SizedBox(height: 15.h,),
          Expanded(child: ListItemProductWidget(name: categoryName,)),
        ],
      ),
    );
  }
}

