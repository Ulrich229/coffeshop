import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MapScreen extends StatelessWidget {
  static const roureName = '/map';
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/maps.png",
            fit: BoxFit.cover,
            width: 100.w,
            height: 100.h,
          ),
          SafeArea(
            child: Column(
              children: [
                SizedBox(height: 2.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(3.w),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(14)),
                            child: Image.asset(
                              "assets/icons/arrow_back.png",
                              height: 4.w,
                              width: 4.w,
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(3.w),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(14)),
                          child: Image.asset(
                            "assets/icons/gps.png",
                            height: 5.w,
                            width: 5.w,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.h),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Column(children: [
                      Container(
                        height: 1.h,
                        width: 15.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: const Color.fromRGBO(241, 241, 241, 1)),
                      ),
                      SizedBox(height: 2.h),
                      Text(
                        "10 minutes left",
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 1.h),
                      RichText(
                        text: TextSpan(
                          text: "Delivery to",
                          style: TextStyle(
                            fontSize: 13.sp,
                            color: Colors.grey,
                          ),
                          children: [
                            TextSpan(
                              text: " Jl. Kpg Sutoyo",
                              style: TextStyle(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 2.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                          4,
                          (index) => Container(
                            height: 0.75.h,
                            width: 20.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: index == 3
                                  ? const Color.fromRGBO(241, 241, 241, 1)
                                  : const Color.fromRGBO(54, 192, 126, 1),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 1.h),
                      Container(
                        padding: EdgeInsets.all(2.w),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromRGBO(234, 234, 234, 1),
                          ),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5.w),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: const Color.fromRGBO(234, 234, 234, 1),
                                ),
                              ),
                              child: Image.asset(
                                'assets/icons/deliverer_left.png',
                                height: 8.w,
                                width: 8.w,
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Delivered your order",
                                  style: TextStyle(
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 1.5.h),
                                Text(
                                  "We deliver your goods to you in\nthe shortes possible time.",
                                  style: TextStyle(
                                    fontSize: 11.sp,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 2.h),
                      Row(
                        children: [
                          Container(
                            height: 15.w,
                            width: 15.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              image: const DecorationImage(
                                image: AssetImage(
                                  "assets/images/male_pp.png",
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 2.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Johan Hawn",
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 1.5.h),
                              Text(
                                "Personal Courier",
                                style: TextStyle(
                                  fontSize: 11.sp,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Container(
                            height: 15.w,
                            width: 15.w,
                            padding: EdgeInsets.all(3.w),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color.fromRGBO(234, 234, 234, 1),
                              ),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Image.asset("assets/icons/telpon.png"),
                          ),
                        ],
                      ),
                      SizedBox(height: 2.h),
                    ]),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
