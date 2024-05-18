import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OrderOptionSelector extends StatefulWidget {
  const OrderOptionSelector({
    super.key,
  });

  @override
  State<OrderOptionSelector> createState() => _OrderOptionSelectorState();
}

class _OrderOptionSelectorState extends State<OrderOptionSelector> {
  final List<String> options = ["Deliver", "Pick Up"];
  late int selectedOptionIndex;

  @override
  void initState() {
    selectedOptionIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1.w),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(242, 242, 242, 1),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: options
            .map(
              (e) => OrderingOption(
                isSelected: selectedOptionIndex == options.indexOf(e),
                onTap: () {
                  setState(() {
                    selectedOptionIndex = options.indexOf(e);
                  });
                },
                option: e,
              ),
            )
            .toList(),
      ),
    );
  }
}

class OrderingOption extends StatelessWidget {
  final bool isSelected;
  final String option;
  final VoidCallback onTap;
  const OrderingOption({
    super.key,
    required this.isSelected,
    required this.onTap,
    required this.option,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
          curve: Curves.linear,
          duration: const Duration(milliseconds: 200),
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 1.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: isSelected
                ? const Color.fromRGBO(198, 124, 78, 1)
                : const Color.fromRGBO(242, 242, 242, 1),
          ),
          child: Text(
            option,
            style: TextStyle(
              fontSize: 15.sp,
              color: isSelected ? Colors.white : Colors.black,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
