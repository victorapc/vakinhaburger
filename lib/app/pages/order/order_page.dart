import 'package:flutter/material.dart';
import 'package:vakinhaburger/app/core/ui/styles/text_styles.dart';
import 'package:vakinhaburger/app/core/ui/widgets/delivery_appbar.dart';
import 'package:vakinhaburger/app/dto/order%20_product_dto.dart';
import 'package:vakinhaburger/app/models/product_model.dart';
import 'package:vakinhaburger/app/pages/order/widgets/order_product_tile.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DeliveryAppbar(),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: Row(
                children: [
                  Text(
                    'Carrinho',
                    style: context.textStyles.textTitle,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/images/trashRegular.png'),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 2,
              (context, index) {
                return Column(
                  children: [
                    OrderProductTile(
                      index: index,
                      orderProduct: OrderProductDto(
                        amount: 10,
                        product: ProductModel.fromMap(
                          {},
                        ),
                      ),
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
