import 'package:flutter/material.dart';
import 'package:vakinhaburger/app/core/ui/widgets/delivery_button.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash'),
      ),
      body: Column(
        children: [
          Container(),
          DeliveryButton(
            width: 200,
            label: 'teste',
            onPressed: () {},
          ),
          TextFormField(),
        ],
      ),
    );
  }
}