import 'package:bloc/bloc.dart';
import 'package:vakinhaburger/app/dto/order%20_product_dto.dart';
import 'package:vakinhaburger/app/pages/order/bloc/order_state.dart';

class OrderController extends Cubit<OrderState> {
  OrderController() : super(const OrderState.initial());

  void load(List<OrderProductDto> products) {
    emit(state.copyWith(orderProducts: products));
  }
}
