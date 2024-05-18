import 'package:coffeeshop/presentation/screens/home/widget/coffee_type_item.dart';
import 'package:coffeeshop/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CoffeTypeSelector extends StatefulWidget {
  const CoffeTypeSelector({
    super.key,
  });

  @override
  State<CoffeTypeSelector> createState() => _CoffeTypeSelectorState();
}

class _CoffeTypeSelectorState extends State<CoffeTypeSelector> {
  late int selectedCoffeeTypeIndex;

  @override
  void initState() {
    selectedCoffeeTypeIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 5.h,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CoffeeTypeItem(
            coffeeType: coffeTypes[index],
            isSelected: selectedCoffeeTypeIndex == index,
            onTap: () {
              setState(() {
                selectedCoffeeTypeIndex = index;
              });
            },
          );
        },
        itemCount: coffeTypes.length,
      ),
    );
  }
}
