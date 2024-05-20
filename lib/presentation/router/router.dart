import 'package:coffeeshop/data/models/coffee.dart';
import 'package:coffeeshop/presentation/screens/coffee_detail/coffee_detail_screen.dart';
import 'package:coffeeshop/presentation/screens/home/home_screen.dart';
import 'package:coffeeshop/presentation/screens/map/map_screen.dart';
import 'package:coffeeshop/presentation/screens/onboarding/onboarding_screen.dart';
import 'package:coffeeshop/presentation/screens/order/ordering_screen.dart';
import 'package:flutter/material.dart';

onGenerateRoute(RouteSettings settings) {
  WidgetBuilder builder;
  switch (settings.name) {
    case '/':
      builder = (BuildContext _) => const OnboardingScreen();
      break;

    case '/home':
      builder = (BuildContext _) => const HomeScreen();
      break;

    case '/coffee-details':
      final Coffee coffee = settings.arguments as Coffee;
      builder = (BuildContext _) => CoffeeDetailScreen(coffee: coffee);
      break;

    case '/order':
      final Coffee coffee = settings.arguments as Coffee;
      builder = (BuildContext _) => OrderingScreen(coffee: coffee);
      break;
    case '/map':
      builder = (BuildContext _) => const MapScreen();
      break;

    default:
      throw Exception('Invalid route: ${settings.name}');
  }
  return MaterialPageRoute(builder: builder, settings: settings);
}
