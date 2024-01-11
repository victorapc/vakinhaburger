import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:vakinhaburger/app/core/exceptions/repository_exception.dart';
import 'package:vakinhaburger/app/core/restclient/custom_dio.dart';
import 'package:vakinhaburger/app/models/payment_type_model.dart';

import './order_repository.dart';

class OrderRepositoryImpl implements OrderRepository {
  final CustomDio dio;

  OrderRepositoryImpl({
    required this.dio,
  });

  @override
  Future<List<PaymentTypeModel>> getAllPaymentsTypes() async {
    try {
      final result = await dio.auth().get('/payment-types');

      return result.data
          .map<PaymentTypeModel>((p) => PaymentTypeModel.fromMap(p))
          .toList();
    } on DioException catch (e, s) {
      log('Erro ao buscar formas de pagamento.', error: e, stackTrace: s);
      throw RepositoryException(message: 'Erro ao buscar formas de pagamento.');
    }
  }
}
