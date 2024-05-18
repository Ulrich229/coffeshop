import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ExtraItem extends StatelessWidget {
  final String extraIconPath;
  const ExtraItem({
    super.key,
    required this.extraIconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 9.w,
      width: 9.w,
      padding: EdgeInsets.all(2.5.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromRGBO(249, 249, 249, 1),
      ),
      child: Image.asset(
        extraIconPath,
        fit: BoxFit.fill,
      ),
    );
  }
}
