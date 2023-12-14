import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vakinhaburger/app/pages/home/bloc/home_controller.dart';
import 'package:vakinhaburger/app/pages/home/home_page.dart';
import 'package:vakinhaburger/app/repositories/products/products_repository.dart';
import 'package:vakinhaburger/app/repositories/products/products_repository_impl.dart';

class HomeRouter {
  HomeRouter._();

  static Widget get page => MultiProvider(
        providers: [
          Provider<ProductsRepository>(
            create: (context) => ProductsRepositoryImpl(dio: context.read()),
          ),
          Provider(
            create: (context) => HomeController(
              context.read(),
            ),
          ),
        ],
        child: const HomePage(),
      );
}
