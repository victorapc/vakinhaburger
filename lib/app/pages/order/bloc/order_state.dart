import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:match/match.dart';

import 'package:vakinhaburger/app/dto/order%20_product_dto.dart';
import 'package:vakinhaburger/app/models/payment_type_model.dart';

part 'order_state.g.dart';

@match
enum OrderStatus {
  initial,
  loading,
  loaded,
  error,
}

class OrderState extends Equatable {
  final OrderStatus status;
  final List<OrderProductDto> orderProducts;
  final List<PaymentTypeModel> paymentTypes;
  final String? errorMassage;

  const OrderState({
    required this.status,
    required this.orderProducts,
    required this.paymentTypes,
    this.errorMassage,
  });

  const OrderState.initial()
      : status = OrderStatus.initial,
        orderProducts = const [],
        paymentTypes = const [],
        errorMassage = null;

  @override
  List<Object?> get props =>
      [status, orderProducts, paymentTypes, errorMassage];

  OrderState copyWith({
    OrderStatus? status,
    List<OrderProductDto>? orderProducts,
    List<PaymentTypeModel>? paymentTypes,
    String? errorMassage,
  }) {
    return OrderState(
      status: status ?? this.status,
      orderProducts: orderProducts ?? this.orderProducts,
      paymentTypes: paymentTypes ?? this.paymentTypes,
      errorMassage: errorMassage ?? this.errorMassage,
    );
  }
}
