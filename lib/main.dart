import 'package:flutter/material.dart';
import 'package:vakinhaburger/app/core/config/env/env.dart';
import 'package:vakinhaburger/app/delivery_app.dart';

Future<void> main() async {
  await Env.i.load();

  runApp(const DeliveryApp());
}
