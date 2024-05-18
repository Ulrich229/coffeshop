import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CoffeeTypeItem extends StatelessWidget {
  final bool isSelected;
  final String coffeeType;
  final VoidCallback onTap;
  const CoffeeTypeItem({
    super.key,
    required this.isSelected,
    required this.coffeeType,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2.w),
      margin: EdgeInsets.only(right: 2.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color:
            isSelected ? const Color.fromRGBO(198, 124, 78, 1) : Colors.white,
      ),
      child: Text(
        coffeeType,
        style: TextStyle(
          fontSize: 12.sp,
          color: isSelected ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}