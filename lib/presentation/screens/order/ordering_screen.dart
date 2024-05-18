import 'package:coffeeshop/data/models/coffee.dart';
import 'package:coffeeshop/presentation/screens/order/widgets/order_tiny_option_button.dart';
import 'package:coffeeshop/presentation/screens/order/widgets/ordering_option_selector.dart';
import 'package:coffeeshop/presentation/screens/order/widgets/quantity_selector.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OrderingScreen extends StatelessWidget {
  static const routeName = '/order';
  final Coffee coffee;
  const OrderingScreen({super.key, required this.coffee});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(5.w, 2.w, 5.w, 0),
              child: Row(
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
                  const Spacer(),
                  Text(
                    "Order",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
            SizedBox(height: 1.h),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(5.w, 0, 5.w, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const OrderOptionSelector(),
                          SizedBox(height: 1.5.h),
                          Text(
                            "Delivery Address",
                            style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 1.h),
                          Text(
                            "Jl. Kpg Sutoyo",
                            style: TextStyle(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 1.h),
                          Text(
                            "Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.",
                            style: TextStyle(
                              fontSize: 11.sp,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 1.h),
                          const Row(
                            children: [
                              OrderTinyOptionButton(
                                iconPath: "assets/icons/edit.png",
                                option: "Edit Address",
                              ),
                              OrderTinyOptionButton(
                                iconPath: "assets/icons/Document.png",
                                option: "Add Note",
                              ),
                            ],
                          ),
                          SizedBox(height: 1.h),
                          const Divider(
                            color: Color.fromRGBO(234, 234, 234, 1),
                          ),
                          SizedBox(height: 1.h),
                          Row(
                            children: [
                              Container(
                                height: 10.h,
                                width: 10.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                    image: AssetImage(coffee.imagePath),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(width: 2.w),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Cappucino",
                                    style: TextStyle(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 0.5.h),
                                  Text(
                                    "with ${coffee.extra}",
                                    style: TextStyle(
                                      fontSize: 11.sp,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              const QantitySelector(),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 2.h),
                    const Divider(
                      color: Color.fromRGBO(234, 234, 234, 1),
                      thickness: 3,
                    ),
                    SizedBox(height: 2.h),
                    Padding(
                      padding: EdgeInsets.fromLTRB(5.w, 0, 5.w, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(3.w),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color.fromRGBO(234, 234, 234, 1),
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/icons/Discount.png",
                                  height: 5.w,
                                  width: 5.w,
                                  fit: BoxFit.fill,
                                ),
                                SizedBox(width: 3.w),
                                Text(
                                  "1 Discount is applied",
                                  style: TextStyle(
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 12.sp,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 2.h),
                          Text(
                            "Payment Summary",
                            style: TextStyle(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 1.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Price",
                                style: TextStyle(
                                  fontSize: 11.sp,
                                ),
                              ),
                              Text(
                                "\$ ${coffee.price.toStringAsFixed(2)}",
                                style: TextStyle(
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 1.h),
                          Row(
                            children: [
                              Text(
                                "Delivery Fee",
                                style: TextStyle(
                                  fontSize: 11.sp,
                                ),
                              ),
                              const Spacer(),
                              Text(
                                "\$ 2.0",
                                style: TextStyle(
                                    fontSize: 11.sp,
                                    decoration: TextDecoration.lineThrough),
                              ),
                              SizedBox(width: 2.w),
                              Text(
                                "\$ 1.0",
                                style: TextStyle(
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 1.h),
                          const Divider(
                            color: Color.fromRGBO(234, 234, 234, 1),
                          ),
                          SizedBox(height: 1.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Total Payment",
                                style: TextStyle(
                                  fontSize: 11.sp,
                                ),
                              ),
                              Text(
                                "\$ ${(coffee.price + 1.0).toStringAsFixed(2)}",
                                style: TextStyle(
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 2.h),
                          Row(
                            children: [
                              Image.asset(
                                "assets/icons/ticket.png",
                                height: 5.w,
                                width: 5.w,
                                fit: BoxFit.fill,
                              ),
                              SizedBox(width: 4.w),
                              Container(
                                width: 30.w,
                                padding: EdgeInsets.zero,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: const Color.fromRGBO(246, 246, 246, 1),
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.center,
                                        padding: EdgeInsets.all(1.5.w),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color: const Color.fromRGBO(
                                              198, 124, 78, 1),
                                        ),
                                        child: Text(
                                          "Cash",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10.sp,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Center(
                                        child: Text(
                                          "\$ ${(coffee.price + 1.0).toStringAsFixed(2)}",
                                          style: TextStyle(
                                            fontSize: 10.sp,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const Spacer(),
                              CircleAvatar(
                                radius: 10.sp,
                                backgroundColor:
                                    const Color.fromRGBO(128, 128, 128, 1),
                                child: const Center(
                                  child: Icon(
                                    Icons.more_horiz_rounded,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(5.w, 0, 5.w, 2.w),
              child: MaterialButton(
                onPressed: () {},
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
                      "Order",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.sp,
                      ),
                    ),
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
