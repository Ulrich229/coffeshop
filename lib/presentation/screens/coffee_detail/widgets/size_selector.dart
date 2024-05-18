import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SizeSelector extends StatefulWidget {
  const SizeSelector({
    super.key,
  });

  @override
  State<SizeSelector> createState() => _SizeSelectorState();
}

class _SizeSelectorState extends State<SizeSelector> {
  final List<String> sizes = ["S", "M", "L"];
  late int selectedSizedIndex;

  @override
  void initState() {
    selectedSizedIndex = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: sizes
          .map(
            (e) => SizeItem(
              isSelected: selectedSizedIndex == sizes.indexOf(e),
              size: e,
              onTap: () {
                setState(() {
                  selectedSizedIndex = sizes.indexOf(e);
                });
              },
            ),
          )
          .toList(),
    );
  }
}

class SizeItem extends StatelessWidget {
  final bool isSelected;
  final String size;
  final VoidCallback onTap;
  const SizeItem({
    super.key,
    required this.isSelected,
    required this.size,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 11.w, vertical: 1.h),
        decoration: BoxDecoration(
          color: isSelected ? const Color.fromRGBO(255, 245, 238, 1) : null,
          border: Border.all(
            color: isSelected ? const Color.fromRGBO(198, 124, 78, 1) : Colors.grey,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          size,
          style: TextStyle(
            fontSize: 15.sp,
            color: isSelected ? const Color.fromRGBO(198, 124, 78, 1) : Colors.black,
          ),
        ),
      ),
    );
  }
}
