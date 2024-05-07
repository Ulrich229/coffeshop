import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    final Size deviceSize = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: const BoxDecoration(
        color: Color.fromRGBO(237, 237, 237, 0.1),
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 8,
            child: Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
              height: deviceSize.height / 18,
              child: TextField(
                cursorColor: const Color.fromRGBO(198, 124, 78, 1),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.sp,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  errorBorder: InputBorder.none,
                  focusedErrorBorder: InputBorder.none,
                  hintText: 'Search coffee',
                  disabledBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  contentPadding:
                      EdgeInsets.fromLTRB(1.7.w, 1.7.w, 1.7.w, 1.7.w),
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 12.sp,
                  ),
                  prefixIcon: Image.asset("assets/icons/search-normal.png"),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(0.4.w),
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(198, 124, 78, 1),
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              padding: const EdgeInsets.all(10),
              child: InkWell(
                splashColor:
                    const Color.fromRGBO(198, 124, 78, 1).withOpacity(0.5),
                onTap: () {},
                child: Image.asset(
                  'assets/icons/setting.png',
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
