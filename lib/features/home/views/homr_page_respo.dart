import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:gap/gap.dart';

import 'package:hungry_app/features/home/widgets/card_item.dart';
import 'package:hungry_app/features/home/widgets/food_catrgory.dart';
import 'package:hungry_app/features/home/widgets/user_header.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List category = ["Pizza", "Burger", "Sushi", "Dessert", "Drinks"];
  int selectedIndex = 0;

  // دالة لتحديد عدد الأعمدة في Grid بناءً على عرض الشاشة
  int _getCrossAxisCount(double width) {
    if (width < 600) {
      return 2; // موبايل
    } else if (width < 900) {
      return 3; // تابلت
    } else {
      return 4; // ديسكتوب
    }
  }

  // دالة لتحديد أبعاد العنصر في Grid
  double _getChildAspectRatio(double width) {
    if (width < 600) {
      return 0.73; // موبايل
    } else if (width < 900) {
      return 0.8; // تابلت
    } else {
      return 0.9; // ديسكتوب
    }
  }

  // دالة لتحديد Padding أفقي متناسب مع حجم الشاشة
  double _getHorizontalPadding(double width) {
    if (width < 600) {
      return 15.0; // موبايل
    } else if (width < 900) {
      return 25.0; // تابلت
    } else {
      return 40.0; // ديسكتوب
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            double screenWidth = constraints.maxWidth;
            double horizontalPadding = _getHorizontalPadding(screenWidth);
            int crossAxisCount = _getCrossAxisCount(screenWidth);
            double childAspectRatio = _getChildAspectRatio(screenWidth);

            return CustomScrollView(
              clipBehavior: Clip.none,
              slivers: [
                // SliverAppBar متجاوب
                SliverAppBar(
                  elevation: 0,
                  pinned: true,
                  floating: false,
                  toolbarHeight: screenWidth < 600 ? 150 : 180,
                  scrolledUnderElevation: 0,
                  backgroundColor: Colors.white,
                  automaticallyImplyLeading: false,
                  flexibleSpace: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(
                        color: Colors.white.withAlpha(450).withOpacity(0.1),
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: screenWidth < 600 ? 70 : 80,
                            right: horizontalPadding,
                            left: horizontalPadding,
                          ),
                          child: Column(
                            children: [
                              UserHeader(),
                              Gap(screenWidth < 600 ? 2 : 5),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                // FoodCategory متجاوب
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 20,
                      left: horizontalPadding,
                      right: horizontalPadding,
                    ),
                    child: FoodCategory(
                      selectedIndex: selectedIndex,
                      category: category,
                    ),
                  ),
                ),

                // GridView متجاوب
                SliverPadding(
                  padding: EdgeInsets.only(
                    top: 20,
                    left: horizontalPadding,
                    right: horizontalPadding,
                    bottom: 20,
                  ),
                  sliver: SliverGrid(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: crossAxisCount,
                      childAspectRatio: childAspectRatio,
                      mainAxisSpacing: screenWidth < 600 ? 10 : 15,
                      crossAxisSpacing: screenWidth < 600 ? 10 : 15,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      childCount: 100,
                      (context, index) {
                        return GestureDetector(
                          // onTap: () => Navigator.push(...),
                          child: CardItem(
                            image: "assets/test/test.png",
                            text: "text",
                            desc: "desc",
                            rate: "rate",
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}