import 'package:coffeeshop/utils/constants.dart';
import 'package:coffeeshop/presentation/screens/home/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "/home";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int _page;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    _page = 0;
    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  void navigationTapped(int page) {
    //Animating Page
    pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        onPageChanged: (value) => setState(() {
          _page = value;
        }),
        children: const [
          HomePage(),
          SizedBox(),
          SizedBox(),
          SizedBox(),
        ],
      ),
      bottomNavigationBar: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        elevation: 20,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: BottomNavigationBar(
            elevation: 10,
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 0,
            backgroundColor: Colors.white,
            items: menuIcons
                .map(
                  (menuIcon) => buildBottomNavigationBarItem(
                    iconPath: "assets/icons/$menuIcon.png",
                    isSelected: _page == menuIcons.indexOf(menuIcon),
                    context: context,
                  ),
                )
                .toList(),
            onTap: navigationTapped,
            currentIndex: _page,
          ),
        ),
      ),
    );
  }
}

BottomNavigationBarItem buildBottomNavigationBarItem(
    {required String iconPath,
    required bool isSelected,
    required BuildContext context}) {
  return BottomNavigationBarItem(
    icon: SizedBox(
      height: AppBar().preferredSize.height,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(
            flex: 2,
          ),
          SizedBox(
            height: 5.w,
            width: 5.w,
            child: Image.asset(
              iconPath,
              fit: BoxFit.fitHeight,
              color: isSelected ? const Color.fromRGBO(198, 124, 78, 1) : null,
            ),
          ),
          const Spacer(),
          Container(
            height: 5,
            width: 4.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: isSelected
                  ? const LinearGradient(
                      colors: [
                        Color.fromRGBO(237, 171, 129, 1),
                        Color.fromRGBO(198, 124, 78, 1),
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                    )
                  : null,
            ),
          ),
          SizedBox(height: 1.h),
        ],
      ),
    ),
    label: '',
    backgroundColor: Colors.green,
  );
}
