import 'package:bloc/bloc.dart';

class ProductDetailControler extends Cubit<int> {
  ProductDetailControler() : super(1);

  void increment() => emit(state + 1);
  void decrement() {
    if (state > 1) {
      emit(state - 1);
    }
  }
}
