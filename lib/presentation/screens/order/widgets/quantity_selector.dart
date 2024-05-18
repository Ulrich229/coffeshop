import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class QantitySelector extends StatefulWidget {
  const QantitySelector({
    super.key,
  });

  @override
  State<QantitySelector> createState() => _QantitySelectorState();
}

class _QantitySelectorState extends State<QantitySelector> {
  late int quantity;

  @override
  void initState() {
    quantity = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            if (quantity != 1) {
              setState(() {
                quantity--;
              });
            }
          },
          child: Container(
            padding: EdgeInsets.all(1.w),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey),
            ),
            child: Icon(
              Icons.remove,
              size: 13.sp,
              color: quantity == 1 ? Colors.grey : Colors.black,
            ),
          ),
        ),
        SizedBox(
          width: 4.w,
        ),
        Text(
          quantity.toString(),
          style: TextStyle(
            fontSize: 13.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 4.w,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              quantity++;
            });
          },
          child: Container(
            padding: EdgeInsets.all(1.w),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey),
            ),
            child: Icon(
              Icons.add,
              size: 13.sp,
            ),
          ),
        ),
      ],
    );
  }
}
