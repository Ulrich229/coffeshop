import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OrderTinyOptionButton extends StatelessWidget {
  final String iconPath;
  final String option;
  const OrderTinyOptionButton({
    super.key,
    required this.iconPath,
    required this.option,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2.w),
      padding: EdgeInsets.symmetric(
        horizontal: 2.w,
        vertical: 1.w,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: const Color.fromRGBO(222, 222, 222, 1),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            iconPath,
            height: 4.w,
            width: 4.w,
            fit: BoxFit.fill,
          ),
          SizedBox(
            width: 1.w,
          ),
          Text(
            option,
            style: TextStyle(
              fontSize: 10.sp,
            ),
          ),
        ],
      ),
    );
  }
}
