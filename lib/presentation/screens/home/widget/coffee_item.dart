import 'package:coffeeshop/data/models/coffee.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CoffeeItem extends StatelessWidget {
  final Coffee coffee;
  const CoffeeItem({
    super.key,
    required this.coffee,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          '/coffee-details',
          arguments: coffee,
        );
      },
      child: Card(
        surfaceTintColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Container(
          padding: EdgeInsets.all(1.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 22.h,
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(2.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: AssetImage(
                      coffee.imagePath,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/icons/star.png",
                      height: 3.w,
                      width: 3.w,
                    ),
                    SizedBox(width: 1.w),
                    Text(
                      coffee.price.toStringAsFixed(1),
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$ ${coffee.price.toStringAsFixed(2)}",
                          style: TextStyle(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromRGBO(47, 75, 78, 1),
                          ),
                        ),
                        MaterialButton(
                          padding: EdgeInsets.zero,
                          minWidth: 0,
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: const Color.fromRGBO(198, 124, 78, 1),
                          child: Padding(
                            padding: EdgeInsets.all(2.w),
                            child: const Icon(
                              Icons.add_rounded,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
