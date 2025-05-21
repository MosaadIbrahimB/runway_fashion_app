import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:runway_fashion_app/core/utils/app_text_style.dart';
import 'package:runway_fashion_app/core/widget/custom_app_bar_widget.dart';
import 'package:runway_fashion_app/feature/home/presentation/widgets/bottom_navigation_bar_widget.dart';
import '../widgets/custom_video_widget.dart';
import '../widgets/list_category_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBarWidget(title: "Runway",
      leadingImage:"assets/image/appbar_menu.svg" ,actionImage: "assets/image/bell-appbar.svg",
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //video
            SizedBox(
              height: 650.h,
              width: double.infinity,
              child: const CustomVideoWidget(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20).r,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 17.5.h),
                  Text("Categories", style: AppTextStyle.inter16BlackW700),
                  SizedBox(height: 17.5.h),
                  ListCategoryWidget(),
                ],
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}


