import 'package:bloc/bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vakinhaburger/app/pages/auth/login/bloc/login_state.dart';
import 'package:vakinhaburger/app/repositories/auth/auth_repository.dart';

class LoginController extends Cubit<LoginState> {
  final AuthRepository _authRepository;

  LoginController(this._authRepository) : super(const LoginState.initial());

  Future<void> login(String email, String password) async {
    emit(state.copyWith(status: LoginStatus.login));
    final authModel = await _authRepository.login(email, password);
    final sp = await SharedPreferences.getInstance();
    sp.setString(
      'accessToken',
      authModel.accessToken,
    );
    sp.setString(
      'refreshToken',
      authModel.refreshToken,
    );
  }
}
