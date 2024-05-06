import 'package:coffeeshop/presentation/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

onGenerateRoute(RouteSettings settings) {
  WidgetBuilder builder;
  switch (settings.name) {
    case '/':
      builder = (BuildContext _) => const HomeScreen();
      break;
    default:
      throw Exception('Invalid route: ${settings.name}');
  }
  return MaterialPageRoute(builder: builder, settings: settings);
}
