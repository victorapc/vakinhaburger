import 'package:flutter/material.dart';
import 'package:vakinhaburger/app/core/provider/application_binding.dart';
import 'package:vakinhaburger/app/core/ui/theme/theme_config.dart';
import 'package:vakinhaburger/app/pages/home/home_router.dart';
import 'package:vakinhaburger/app/pages/product_detail/product_detail_router.dart';
import 'package:vakinhaburger/app/pages/splash/splash_page.dart';

class DeliveryApp extends StatelessWidget {
  const DeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ApplicationBinding(
      child: MaterialApp(
        title: 'Delivery App',
        theme: ThemeConfig.theme,
        routes: {
          '/': (context) => const SplashPage(),
          '/home': (context) => HomeRouter.page,
          '/productDetail': (context) => ProductDetailRouter.page,
        },
      ),
    );
  }
}
