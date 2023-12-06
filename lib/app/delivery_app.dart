import 'package:flutter/material.dart';
import 'package:vakinhaburger/app/pages/splash/splash_page.dart';

class DeliveryApp extends StatelessWidget {
  const DeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Delivery App',
      routes: {
        '/': (context) => const SplashPage(),
      },
    );
  }
}
