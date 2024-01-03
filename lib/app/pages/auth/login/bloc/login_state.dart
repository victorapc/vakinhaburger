import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:match/match.dart';

part 'login_state.g.dart';

@match
enum LoginStatus {
  initial,
  login,
  success,
  loginError,
  error,
}

class LoginState extends Equatable {
  final LoginStatus status;
  final String? errorMessage;

  const LoginState({
    required this.status,
    this.errorMessage,
  });

  const LoginState.initial()
      : status = LoginStatus.initial,
        errorMessage = null;

  @override
  List<Object?> get props => [status, errorMessage];

  LoginState copyWith({
    LoginStatus? status,
    ValueGetter<String?>? errorMessage,
  }) {
    return LoginState(
      status: status ?? this.status,
      errorMessage: errorMessage?.call() ?? this.errorMessage,
    );
  }
}
