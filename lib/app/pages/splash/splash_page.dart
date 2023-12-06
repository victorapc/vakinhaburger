import 'package:flutter/material.dart';
import 'package:vakinhaburger/app/core/ui/styles/app_styles.dart';
import 'package:vakinhaburger/app/core/ui/styles/colors_app.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        primaryColor: ColorsApp.i.primary,
        colorScheme: ColorScheme.fromSeed(
          seedColor: ColorsApp.i.primary,
          primary: ColorsApp.i.primary,
          secondary: ColorsApp.i.secondary,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: AppStyles.i.primaryButton,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Splash'),
        ),
        body: Column(
          children: [
            Container(),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Teste'),
            ),
          ],
        ),
      ),
    );
  }
}
