// import 'package:e_commerce/View%20Model/IntroScreen%20Controller/IntroScreen_Controller.dart';
// import 'package:e_commerce/main.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';

// class Introscreen extends StatelessWidget {
//   final introScreen_controller introcontroller =
//       Get.put(introScreen_controller());
//   Introscreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: PageView.builder(
//             controller: introcontroller.pageController,
//             onPageChanged: (index) => introcontroller.currentPage.value = index,
//             itemCount: introcontroller.pages.length,
//             itemBuilder: (context, index) {
//               return Obx(
//                 () {
//                   //getting the value of the current page
//                   final page =
//                       introcontroller.pages[introcontroller.currentPage.value];
//                   return Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Center(
//                         child: page.assetImage,
//                       ),
//                       Text(page.title),
//                       Text(page.description),

//                       // Navigation buttons
//                       Padding(
//                         padding: const EdgeInsets.all(20.0),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             // Skip button (only shown if not on last page)
//                             if (introcontroller.currentPage.value <
//                                 introcontroller.pages.length - 1)
//                               TextButton(
//                                 onPressed: () => introcontroller
//                                     .goToPage(introcontroller.pages.length - 1),
//                                 child: Text('Skip'),
//                               )
//                             else
//                               SizedBox(width: 80),

//                             // Next/Get Started button
//                             ElevatedButton(
//                               onPressed: introcontroller.nextPage,
//                               child: Text(
//                                 introcontroller.currentPage.value ==
//                                         introcontroller.pages.length - 1
//                                     ? 'Get Started'
//                                     : 'Next',
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Container(
//                         height: 50.h,
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: List.generate(
//                               introcontroller.pages.length,
//                               (index) => GestureDetector(
//                                     onTap: () =>
//                                         introcontroller.goToPage(index),
//                                     child: Container(
//                                       width: 10.w,
//                                       height: 10.h,
//                                       margin:
//                                           EdgeInsets.symmetric(horizontal: 5),
//                                       decoration: BoxDecoration(
//                                         shape: BoxShape.circle,
//                                         color:
//                                             introcontroller.currentPage.value ==
//                                                     index
//                                                 ? Colors.blue
//                                                 : Colors.grey,
//                                       ),
//                                     ),
//                                   )),
//                         ),
//                       ),
//                     ],
//                   );
//                 },
//               );
//             }));
//   }
// }

import 'package:e_commerce/Resources/Constants/Constants.dart';
import 'package:e_commerce/View%20Model/IntroScreen%20Controller/IntroScreen_Controller.dart';
import 'package:e_commerce/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Introscreen extends StatelessWidget {
  final introScreen_controller introcontroller =
      Get.put(introScreen_controller());
  Introscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: introcontroller.pageController,
            onPageChanged: (index) => introcontroller.currentPage.value = index,
            itemCount: introcontroller.pages.length,
            itemBuilder: (context, index) {
              return Obx(() {
                final page =
                    introcontroller.pages[introcontroller.currentPage.value];
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Content takes most of the space
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(child: page.assetImage),
                          SizedBox(height: 5.h),
                          Text(page.title, style: Constants.titleStyle),
                          SizedBox(height: 10.h),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30.w),
                            child: Text(page.description,
                                textAlign: TextAlign.center,
                                style: Constants.descripStyle),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              });
            },
          ),

          // Top navigation elements (skip and page indicators)
          Positioned(
            top: 50.h,
            left: 20.w,
            right: 20.w,
            child: Obx(() => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: (introcontroller.currentPage.value + 1)
                                  .toString(),
                              style: Constants.introIndex),
                          TextSpan(
                              text: "/${introcontroller.pages.length}",
                              style: TextStyle(color: Colors.black)
                              // Explicit normal weight
                              ),
                        ],
                      ),
                    ),
                    // Page indicators (top-right)
                    if (introcontroller.currentPage.value <
                        introcontroller.pages.length - 1)
                      TextButton(
                        onPressed: () => introcontroller
                            .goToPage(introcontroller.pages.length - 1),
                        child: Text('Skip', style: Constants.introSkip),
                      )
                    else
                      SizedBox(width: 80.w),
                  ],
                )),
          ),

          // Bottom navigation button
          Positioned(
              bottom: 20.h,
              left: 20.w,
              right: 20.w,
              child: Obx(() {
                final isLastPage = introcontroller.currentPage.value ==
                    introcontroller.pages.length - 1;
                return Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    GestureDetector(
                      onTap: introcontroller.previousPage,
                      child: introcontroller.currentPage.value > 0
                          ? Text(
                              'Prev',
                              style: Constants.introPrevious,
                            )
                          : SizedBox(
                              width: 50.w,
                            ),
                    ),
                    introcontroller.currentPage.value == 2 | 3
                        ? Center()
                        : SizedBox(
                            width: 80.w,
                          ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        introcontroller.pages.length,
                        (index) => Container(
                          width: 10.w,
                          height: 10.h,
                          margin: EdgeInsets.symmetric(horizontal: 5.w),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: introcontroller.currentPage.value == index
                                ? Colors.blue
                                : Colors.grey.withOpacity(0.5),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: isLastPage ? 25.w : 80.w,
                    ),
                    GestureDetector(
                      onTap: introcontroller.nextPage,
                      child: Text(
                        introcontroller.currentPage.value ==
                                introcontroller.pages.length - 1
                            ? 'Get Started'
                            : 'Next',
                        style: Constants.introNext,
                      ),
                    ),
                  ],
                );
              })),
        ],
      ),
    );
  }
}
