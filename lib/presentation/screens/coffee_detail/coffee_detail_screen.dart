import 'package:coffeeshop/data/models/coffee.dart';
import 'package:coffeeshop/presentation/screens/coffee_detail/widgets/extra_item.dart';
import 'package:coffeeshop/presentation/screens/coffee_detail/widgets/size_selector.dart';
import 'package:coffeeshop/presentation/screens/order/ordering_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CoffeeDetailScreen extends StatelessWidget {
  final Coffee coffee;
  const CoffeeDetailScreen({super.key, required this.coffee});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(5.w, 2.w, 5.w, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Image.asset(
                      "assets/icons/arrow_back.png",
                      height: 5.w,
                      width: 5.w,
                    ),
                  ),
                  Text(
                    "Detail",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Image.asset(
                    "assets/icons/Heart.png",
                    height: 5.w,
                    width: 5.w,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.fromLTRB(5.w, 0, 5.w, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 30.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          image: AssetImage(coffee.imagePath),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 1.h),
                    Text(
                      "Cappucino",
                      style: TextStyle(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "with ${coffee.extra}",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12.sp,
                      ),
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      children: [
                        Image.asset(
                          "assets/icons/star.png",
                          height: 5.w,
                          width: 5.w,
                        ),
                        SizedBox(width: 2.w),
                        Text(
                          coffee.price.toStringAsFixed(1),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.sp,
                          ),
                        ),
                        SizedBox(width: 1.w),
                        Text(
                          '(230)',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12.sp,
                          ),
                        ),
                        const Spacer(),
                        const ExtraItem(
                          extraIconPath: "assets/icons/coffee.png",
                        ),
                        SizedBox(width: 2.w),
                        const ExtraItem(
                          extraIconPath: "assets/icons/milk.png",
                        ),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    const Divider(
                      color: Color.fromRGBO(234, 234, 234, 1),
                    ),
                    SizedBox(height: 1.h),
                    Text(
                      "Description",
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 1.h),
                    Text(
                      "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the foaming action creates the additional volume. Foam's consistency depends on the milk's fat content. For the most velvety, rich cappuccino, use whole milk.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13.sp,
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Text(
                      "Size",
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 1.h),
                    const SizeSelector(),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 5.w,
                  vertical: 1.h,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Price",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12.sp,
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          "\$ ${coffee.price.toStringAsFixed(2)}",
                          style: TextStyle(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromRGBO(198, 124, 78, 1),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(
                            OrderingScreen.routeName,
                            arguments: coffee,
                          );
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: const Color.fromRGBO(198, 124, 78, 1),
                        padding: EdgeInsets.symmetric(
                          vertical: 4.w,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Buy Now",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 3.w),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
