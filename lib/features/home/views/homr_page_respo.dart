// // import 'package:flutter/material.dart';
// // import 'dart:ui';
// // import 'package:gap/gap.dart';

// // import 'package:hungry_app/features/home/widgets/card_item.dart';
// // import 'package:hungry_app/features/home/widgets/food_catrgory.dart';
// // import 'package:hungry_app/features/home/widgets/user_header.dart';

// // class HomeView extends StatefulWidget {
// //   const HomeView({super.key});

// //   @override
// //   State<HomeView> createState() => _HomeViewState();
// // }

// // class _HomeViewState extends State<HomeView> {
// //   List category = ["Pizza", "Burger", "Sushi", "Dessert", "Drinks"];
// //   int selectedIndex = 0;

// //   // دالة لتحديد عدد الأعمدة في Grid بناءً على عرض الشاشة
// //   int _getCrossAxisCount(double width) {
// //     if (width < 600) {
// //       return 2; // موبايل
// //     } else if (width < 900) {
// //       return 3; // تابلت
// //     } else {
// //       return 4; // ديسكتوب
// //     }
// //   }

// //   // دالة لتحديد أبعاد العنصر في Grid
// //   double _getChildAspectRatio(double width) {
// //     if (width < 600) {
// //       return 0.73; // موبايل
// //     } else if (width < 900) {
// //       return 0.8; // تابلت
// //     } else {
// //       return 0.9; // ديسكتوب
// //     }
// //   }

// //   // دالة لتحديد Padding أفقي متناسب مع حجم الشاشة
// //   double _getHorizontalPadding(double width) {
// //     if (width < 600) {
// //       return 15.0; // موبايل
// //     } else if (width < 900) {
// //       return 25.0; // تابلت
// //     } else {
// //       return 40.0; // ديسكتوب
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return GestureDetector(
// //       onTap: () => FocusScope.of(context).unfocus(),
// //       child: Scaffold(
// //         body: LayoutBuilder(
// //           builder: (context, constraints) {
// //             double screenWidth = constraints.maxWidth;
// //             double horizontalPadding = _getHorizontalPadding(screenWidth);
// //             int crossAxisCount = _getCrossAxisCount(screenWidth);
// //             double childAspectRatio = _getChildAspectRatio(screenWidth);

// //             return CustomScrollView(
// //               clipBehavior: Clip.none,
// //               slivers: [
// //                 // SliverAppBar متجاوب
// //                 SliverAppBar(
// //                   elevation: 0,
// //                   pinned: true,
// //                   floating: false,
// //                   toolbarHeight: screenWidth < 600 ? 150 : 180,
// //                   scrolledUnderElevation: 0,
// //                   backgroundColor: Colors.white,
// //                   automaticallyImplyLeading: false,
// //                   flexibleSpace: ClipRRect(
// //                     borderRadius: BorderRadius.circular(30),
// //                     child: BackdropFilter(
// //                       filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
// //                       child: Container(
// //                         color: Colors.white.withAlpha(450).withOpacity(0.1),
// //                         child: Padding(
// //                           padding: EdgeInsets.only(
// //                             top: screenWidth < 600 ? 70 : 80,
// //                             right: horizontalPadding,
// //                             left: horizontalPadding,
// //                           ),
// //                           child: Column(
// //                             children: [
// //                               UserHeader(),
// //                               Gap(screenWidth < 600 ? 2 : 5),
// //                             ],
// //                           ),
// //                         ),
// //                       ),
// //                     ),
// //                   ),
// //                 ),

// //                 // FoodCategory متجاوب
// //                 SliverToBoxAdapter(
// //                   child: Padding(
// //                     padding: EdgeInsets.only(
// //                       top: 20,
// //                       left: horizontalPadding,
// //                       right: horizontalPadding,
// //                     ),
// //                     child: FoodCategory(
// //                       selectedIndex: selectedIndex,
// //                       category: category,
// //                     ),
// //                   ),
// //                 ),

// //                 // GridView متجاوب
// //                 SliverPadding(
// //                   padding: EdgeInsets.only(
// //                     top: 20,
// //                     left: horizontalPadding,
// //                     right: horizontalPadding,
// //                     bottom: 20,
// //                   ),
// //                   sliver: SliverGrid(
// //                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// //                       crossAxisCount: crossAxisCount,
// //                       childAspectRatio: childAspectRatio,
// //                       mainAxisSpacing: screenWidth < 600 ? 10 : 15,
// //                       crossAxisSpacing: screenWidth < 600 ? 10 : 15,
// //                     ),
// //                     delegate: SliverChildBuilderDelegate(
// //                       childCount: 100,
// //                       (context, index) {
// //                         return GestureDetector(
// //                           // onTap: () => Navigator.push(...),
// //                           child: CardItem(
// //                             image: "assets/test/test.png",
// //                             text: "text",
// //                             desc: "desc",
// //                             rate: "rate",
// //                           ),
// //                         );
// //                       },
// //                     ),
// //                   ),
// //                 ),
// //               ],
// //             );
// //           },
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'dart:ui';
// import 'package:gap/gap.dart';

// import 'package:hungry_app/features/home/widgets/card_item.dart';
// import 'package:hungry_app/features/home/widgets/food_catrgory.dart';
// import 'package:hungry_app/features/home/widgets/user_header.dart';

// class HomeView extends StatefulWidget {
//   const HomeView({super.key});

//   @override
//   State<HomeView> createState() => _HomeViewState();
// }

// class _HomeViewState extends State<HomeView> {
//   List category = ["Pizza", "Burger", "Sushi", "Dessert", "Drinks"];
//   int selectedIndex = 0;

//   // دالة لتحديد عدد الأعمدة في Grid بناءً على عرض الشاشة
//   int _getCrossAxisCount(double width) {
//     if (width < 600) {
//       return 2; // موبايل
//     } else if (width < 900) {
//       return 3; // تابلت
//     } else {
//       return 4; // ديسكتوب
//     }
//   }

//   // دالة لتحديد أبعاد العنصر في Grid
//   double _getChildAspectRatio(double width) {
//     if (width < 600) {
//       return 0.73; // موبايل
//     } else if (width < 900) {
//       return 0.8; // تابلت
//     } else {
//       return 0.9; // ديسكتوب
//     }
//   }

//   // دالة لتحديد Padding أفقي متناسب مع حجم الشاشة
//   double _getHorizontalPadding(double width) {
//     if (width < 600) {
//       return 15.0; // موبايل
//     } else if (width < 900) {
//       return 25.0; // تابلت
//     } else {
//       return 40.0; // ديسكتوب
//     }
//   }

//   // دالة لبناء الـ Side Bar للتابلت والديسكتوب
//   Widget _buildTabletLayout(
//     double screenWidth,
//     double screenHeight,
//     double horizontalPadding,
//     int crossAxisCount,
//     double childAspectRatio,
//   ) {
//     return Row(
//       children: [
//         // المحتوى الرئيسي (اليسار) - 75% من المساحة
//         Expanded(
//           flex: 3,
//           child: CustomScrollView(
//             clipBehavior: Clip.none,
//             slivers: [
//               // مسافة في الأعلى
//               SliverToBoxAdapter(child: SizedBox(height: screenHeight * 0.02)),

//               // FoodCategory
//               SliverToBoxAdapter(
//                 child: Padding(
//                   padding: EdgeInsets.only(
//                     top: 20,
//                     left: horizontalPadding,
//                     right: horizontalPadding,
//                   ),
//                   child: FoodCategory(
//                     selectedIndex: selectedIndex,
//                     category: category,
//                   ),
//                 ),
//               ),

//               // Gap
//               SliverToBoxAdapter(child: SizedBox(height: 20)),

//               // GridView
//               SliverPadding(
//                 padding: EdgeInsets.only(
//                   left: horizontalPadding,
//                   right: horizontalPadding,
//                   bottom: 20,
//                 ),
//                 sliver: SliverGrid(
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: crossAxisCount,
//                     childAspectRatio: childAspectRatio,
//                     mainAxisSpacing: 15,
//                     crossAxisSpacing: 15,
//                   ),
//                   delegate: SliverChildBuilderDelegate(childCount: 6, (
//                     context,
//                     index,
//                   ) {
//                     return GestureDetector(
//                       child: CardItem(
//                         image: "assets/test/test.png",
//                         text: "text",
//                         desc: "desc",
//                         rate: "rate",
//                       ),
//                     );
//                   }),
//                 ),
//               ),
//             ],
//           ),
//         ),

//         // الـ Side Bar على اليمين - 25% من المساحة
//         Container(
//           width: screenWidth * 0.25,
//           height: screenHeight,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.horizontal(left: Radius.circular(30)),
//           ),
//           child: ClipRRect(
//             borderRadius: BorderRadius.horizontal(left: Radius.circular(30)),
//             child: BackdropFilter(
//               filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
//               child: Container(
//                 color: Colors.white.withAlpha(450).withOpacity(0.1),
//                 child: SafeArea(
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(
//                       vertical: 20,
//                       horizontal: 10,
//                     ),
//                     child: Column(
//                       children: [
//                         // UserHeader
//                         UserHeader(),
//                         Gap(30),

//                         // روابط Side Bar
//                         _buildSideBarItem(Icons.home, 'Home', true),
//                         _buildSideBarItem(Icons.favorite, 'Favorites', false),
//                         _buildSideBarItem(Icons.history, 'History', false),
//                         _buildSideBarItem(Icons.settings, 'Settings', false),

//                         const Spacer(),

//                         // زر تسجيل الخروج
//                         _buildSideBarItem(Icons.logout, 'Logout', false),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   // عنصر الـ Side Bar
//   Widget _buildSideBarItem(IconData icon, String title, bool isSelected) {
//     return Container(
//       margin: const EdgeInsets.symmetric(vertical: 5),
//       child: ListTile(
//         leading: Icon(
//           icon,
//           color: isSelected ? Colors.orange : Colors.grey[700],
//         ),
//         title: Text(
//           title,
//           style: TextStyle(
//             color: isSelected ? Colors.orange : Colors.grey[700],
//             fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
//           ),
//         ),
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//         tileColor: isSelected ? Colors.orange.withOpacity(0.1) : null,
//         onTap: () {
//           // إضافة وظيفة النقر هنا
//         },
//       ),
//     );
//   }

//   // دالة لبناء تخطيط الموبايل
//   Widget _buildMobileLayout(
//     double screenWidth,
//     double horizontalPadding,
//     int crossAxisCount,
//     double childAspectRatio,
//   ) {
//     return CustomScrollView(
//       clipBehavior: Clip.none,
//       slivers: [
//         // SliverAppBar
//         SliverAppBar(
//           elevation: 0,
//           pinned: true,
//           floating: false,
//           toolbarHeight: 150,
//           scrolledUnderElevation: 0,
//           backgroundColor: Colors.transparent,
//           automaticallyImplyLeading: false,
//           flexibleSpace: ClipRRect(
//             borderRadius: const BorderRadius.only(
//               bottomLeft: Radius.circular(30),
//               bottomRight: Radius.circular(30),
//             ),
//             child: BackdropFilter(
//               filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
//               child: Container(
//                 color: Colors.white.withAlpha(450).withOpacity(0.1),
//                 child: Padding(
//                   padding: EdgeInsets.only(
//                     top: MediaQuery.of(context).padding.top + 20,
//                     right: horizontalPadding,
//                     left: horizontalPadding,
//                   ),
//                   child: const UserHeader(),
//                 ),
//               ),
//             ),
//           ),
//         ),

//         // FoodCategory
//         SliverToBoxAdapter(
//           child: Padding(
//             padding: EdgeInsets.only(
//               top: 20,
//               left: horizontalPadding,
//               right: horizontalPadding,
//             ),
//             child: FoodCategory(
//               selectedIndex: selectedIndex,
//               category: category,
//             ),
//           ),
//         ),

//         const SliverToBoxAdapter(child: SizedBox(height: 20)),

//         // GridView
//         SliverPadding(
//           padding: EdgeInsets.only(
//             left: horizontalPadding,
//             right: horizontalPadding,
//             bottom: 20,
//           ),
//           sliver: SliverGrid(
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: crossAxisCount,
//               childAspectRatio: childAspectRatio,
//               mainAxisSpacing: 10,
//               crossAxisSpacing: 10,
//             ),
//             delegate: SliverChildBuilderDelegate(childCount: 6, (
//               context,
//               index,
//             ) {
//               return GestureDetector(
//                 child: CardItem(
//                   image: "assets/test/test.png",
//                   text: "text",
//                   desc: "desc",
//                   rate: "rate",
//                 ),
//               );
//             }),
//           ),
//         ),
//       ],
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => FocusScope.of(context).unfocus(),
//       child: Scaffold(
//         body: LayoutBuilder(
//           key: const ValueKey(
//             'layout_builder',
//           ), // مفتاح ثابت للمساعدة في إعادة البناء
//           builder: (context, constraints) {
//             double screenWidth = constraints.maxWidth;
//             double screenHeight = constraints.maxHeight;
//             double horizontalPadding = _getHorizontalPadding(screenWidth);
//             int crossAxisCount = _getCrossAxisCount(screenWidth);
//             double childAspectRatio = _getChildAspectRatio(screenWidth);

//             // التحقق من أن القيم صالحة
//             assert(
//               screenWidth > 0 && screenHeight > 0,
//               'Invalid screen dimensions',
//             );

//             // استخدام ValueKey للتأكد من إعادة بناء الواجهة بشكل صحيح
//             return AnimatedSwitcher(
//               duration: const Duration(milliseconds: 300),
//               transitionBuilder: (Widget child, Animation<double> animation) {
//                 return FadeTransition(opacity: animation, child: child);
//               },
//               child: screenWidth >= 600
//                   ? _buildTabletLayout(
//                       screenWidth,
//                       screenHeight,
//                       horizontalPadding,
//                       crossAxisCount,
//                       childAspectRatio,
//                     )
//                   : _buildMobileLayout(
//                       screenWidth,
//                       horizontalPadding,
//                       crossAxisCount,
//                       childAspectRatio,
//                     ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
