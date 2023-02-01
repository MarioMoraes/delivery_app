// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dw9_vakinha_burger_bloc/app/models/product_model.dart';
import 'package:equatable/equatable.dart';
import 'package:match/match.dart';

part 'home_state.g.dart';

@match
enum SearchStatus {
  initial,
  loading,
  loaded,
  error,
}

class HomeState extends Equatable {
  final SearchStatus status;
  final List<ProductModel> listProducts;
  final String? errorMessage;

  const HomeState({
    required this.status,
    required this.listProducts,
    this.errorMessage,
  });

  const HomeState.initial()
      : status = SearchStatus.initial,
        errorMessage = '',
        listProducts = const [];

  @override
  List<Object?> get props => [status, listProducts];

  HomeState copyWith({
    SearchStatus? status,
    List<ProductModel>? listProducts,
    String? errorMessage,
  }) {
    return HomeState(
      status: status ?? this.status,
      listProducts: listProducts ?? this.listProducts,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
