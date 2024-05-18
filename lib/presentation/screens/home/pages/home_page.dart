import 'package:coffeeshop/data/models/coffee.dart';
import 'package:coffeeshop/presentation/screens/home/widget/coffee_item.dart';
import 'package:coffeeshop/presentation/screens/home/widget/coffee_type_selector.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'package:coffeeshop/presentation/screens/home/widget/search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(49, 49, 49, 1),
                      Color.fromRGBO(19, 19, 19, 1),
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(5.w, 10.w, 5.w, 0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "Location",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 10.sp,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Bilzen, Tanjungbalai",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.sp,
                                          ),
                                        ),
                                        SizedBox(width: 2.w),
                                        SizedBox(
                                          height: 3.w,
                                          width: 3.w,
                                          child: Image.asset(
                                              "assets/icons/arrow_down.png"),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Container(
                                  height: 12.w,
                                  width: 12.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    image: const DecorationImage(
                                      image: AssetImage(
                                        "assets/images/female_pp.png",
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 2.h),
                            const CustomSearchBar(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                color: Colors.grey.shade200,
                child: Column(
                  children: [
                    SizedBox(height: 15.h),
                    const CoffeTypeSelector(),
                    Expanded(
                      child: GridView.builder(
                        itemCount: coffees.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 6 / 9,
                          crossAxisSpacing: 2.w,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return CoffeeItem(
                            coffee: coffees[index],
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        Positioned(
          top: 23.h,
          child: Container(
            height: 20.h,
            width: 90.w,
            margin: EdgeInsets.symmetric(horizontal: 5.w),
            padding: EdgeInsets.all(5.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: const DecorationImage(
                image: AssetImage(
                  "assets/images/landscape coffee.png",
                ),
                fit: BoxFit.fitWidth,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(2.w),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(237, 81, 81, 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    "Promo",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 1.h),
                Text(
                  "Buy one get\none FREE",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp,
                      backgroundColor: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
