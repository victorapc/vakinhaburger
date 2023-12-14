import 'package:flutter/material.dart';
import 'package:vakinhaburger/app/core/ui/widgets/delivery_appbar.dart';
import 'package:vakinhaburger/app/models/product_model.dart';
import 'package:vakinhaburger/app/pages/home/widgets/delivery_product_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DeliveryAppbar(),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return DeliveryProductTile(
                  product: ProductModel(
                    id: 0,
                    name: 'Hamburger',
                    description:
                        'Hamburger legal com muito sabor contagiantes de muitas alegrias',
                    price: 15.0,
                    image:
                        'https://burgerx.com.br/assets/img/galeria/burgers/x-burger.jpg',
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
