import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'custom_badge_widget.dart';
import 'item_nav_widget.dart';
class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
      currentIndex: 0,
      onTap: (value) {
      },
      elevation: 0,
      unselectedItemColor: Colors.black,
      selectedItemColor: Colors.black,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      items: [
        BottomNavigationBarItem(
          icon: ItemNavWidget(
            index: 0,
            numberItem: 0,
            icon: Icons.home,
          ),

          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: ItemNavWidget(
            index: 1,
            numberItem: 1,
            icon: Icons.favorite_border,
          ),

          label: "Likes",
        ),
        BottomNavigationBarItem(
          icon: CustomBadgeWidget(
            child: SvgPicture.asset(
              "assets/image/lock.svg",
              width: 24,
              height: 24,
            ),
          ),

          label: "Bag",
        ),
        BottomNavigationBarItem(
          icon: ItemNavWidget(
            index: 3,
            numberItem: 3,
            icon: Icons.person_outline,
          ),

          label: "Profile",
        ),

      ],
    );
  }
}
