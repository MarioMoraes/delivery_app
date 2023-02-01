import 'package:bloc/bloc.dart';

import '../../../repositories/products/products_repository.dart';
import 'home_state.dart';

class HomeController extends Cubit<HomeState> {
  final ProductsRepository _repository;

  HomeController({required ProductsRepository repository})
      : _repository = repository,
        super(const HomeState.initial());

  Future<void> findAllProducts() async {
    try {
      emit(state.copyWith(status: SearchStatus.loading));
      final products = await _repository.findAll();
      emit(state.copyWith(status: SearchStatus.loaded, listProducts: products));
    } catch (e) {
      emit(state.copyWith(
          status: SearchStatus.error, errorMessage: 'Erro Fatal Fiiiiii'));
    }
  }
}
