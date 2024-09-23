import 'package:app_flutter_gps/config/functions.dart';
import 'package:app_flutter_gps/core/constants/colors.dart';
import 'package:app_flutter_gps/presentation/views/favorite/favorite_view.dart';
import 'package:app_flutter_gps/presentation/views/home/home_view.dart';
import 'package:app_flutter_gps/presentation/views/profile/profile_view.dart';
import 'package:app_flutter_gps/presentation/views/search/search_view.dart';

import 'package:get/get.dart';

import 'package:flutter/material.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBarTheme(
          data: NavigationBarThemeData(
            labelTextStyle: WidgetStateProperty.resolveWith(
              (states) {
                if (states.contains(WidgetState.selected)) {
                  return const TextStyle(
                    color: primaryMaterialColor,
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                  );
                }
                return const TextStyle(
                  color: blackColor,
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                );
              },

              // Cambia el color aquí
            ),
          ),
          child: NavigationBar(
            height: 55,
            shadowColor: Colors.black,
            elevation: 4.0,
            backgroundColor: whiteColor,
            selectedIndex: controller.selectedIndex.value,
            indicatorColor: Colors.transparent,
            onDestinationSelected: (value) =>
                controller.selectedIndex.value = value,
            labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
            destinations: [
              NavigationDestination(
                  icon: svgIcon(
                    "assets/icons/Home.svg",
                    context,
                    color: blackColor,
                  ),
                  label: 'Home',
                  selectedIcon: svgIcon("assets/icons/HomeBold.svg", context,
                      color: primaryMaterialColor)),
              NavigationDestination(
                icon: svgIcon("assets/icons/Search.svg", context,
                    color: blackColor),
                label: 'Search',
                selectedIcon: svgIcon("assets/icons/SearchBold.svg", context,
                    color: primaryMaterialColor),
              ),
              NavigationDestination(
                icon: svgIcon("assets/icons/Favorite.svg", context,
                    color: blackColor),
                label: 'Favorites',
                selectedIcon: svgIcon("assets/icons/FavoriteBold.svg", context,
                    color: primaryMaterialColor),
              ),
              NavigationDestination(
                icon: svgIcon("assets/icons/Profile.svg", context,
                    color: blackColor),
                label: 'Profile',
                selectedIcon: svgIcon("assets/icons/ProfileBold.svg", context,
                    color: primaryMaterialColor),
              ),
            ],
          ),
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = const [
    HomeView(),
    SearchView(),
    FavoriteView(),
    ProfileView(),
  ];
}
