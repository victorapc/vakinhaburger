import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vakinhaburger/app/pages/order/bloc/order_controller.dart';
import 'package:vakinhaburger/app/pages/order/order_page.dart';

class OrderRouter {
  OrderRouter._();

  static Widget get page => MultiProvider(
        providers: [
          Provider(
            create: (context) => OrderController(),
          ),
        ],
        child: const OrderPage(),
      );
}
