import 'package:coffeeshop/presentation/router/router.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          title: "Flight Ticket booking App",
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: "Sora",
            scaffoldBackgroundColor: Colors.white,
          ),
          onGenerateRoute: (settings) => onGenerateRoute(settings),
        );
      },
    );
  }
}
