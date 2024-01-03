import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:vakinhaburger/app/core/exceptions/repository_exception.dart';
import 'package:vakinhaburger/app/core/exceptions/unauthorized_exception.dart';
import 'package:vakinhaburger/app/core/restclient/custom_dio.dart';
import 'package:vakinhaburger/app/models/auth_model.dart';

import './auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final CustomDio dio;

  AuthRepositoryImpl({
    required this.dio,
  });

  @override
  Future<AuthModel> login(String email, String password) async {
    try {
      final result = await dio.unauth().post('/auth', data: {
        'email': email,
        'password': password,
      });

      return AuthModel.fromMap(result.data);
    } on DioException catch (e, s) {
      if (e.response?.statusCode == 403) {
        log('Permissão negada.', error: e, stackTrace: s);
        throw UnauthorizedException();
      }

      log('Erro ao realizar login.', error: e, stackTrace: s);
      throw RepositoryException(message: 'Erro ao realizar login');
    }
  }

  @override
  Future<void> register(String name, String email, String password) async {
    try {
      await dio.unauth().post('/users', data: {
        'name': name,
        'email': email,
        'password': password,
      });
    } on DioException catch (e, s) {
      log('Erro ao registrar usuário.', error: e, stackTrace: s);
      throw RepositoryException(message: 'Erro ao registrar usuário.');
    }
  }
}
