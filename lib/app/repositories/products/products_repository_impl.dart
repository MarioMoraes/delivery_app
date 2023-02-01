import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:dw9_vakinha_burger_bloc/app/core/exceptions/repository_exception.dart';
import 'package:dw9_vakinha_burger_bloc/app/core/rest_client/custom_dio.dart';
import 'package:dw9_vakinha_burger_bloc/app/models/product_model.dart';
import 'package:dw9_vakinha_burger_bloc/app/repositories/products/products_repository.dart';

class ProductsRepositoryImpl extends ProductsRepository {
  final CustomDio dio;

  ProductsRepositoryImpl({
    required this.dio,
  });

  @override
  Future<List<ProductModel>> findAll() async {
    try {
      final result = await dio.unauth().get('/products');
      return result.data
          .map<ProductModel>((o) => ProductModel.fromMap(o))
          .toList();
    } on DioError catch (e, s) {
      log('Erro ao buscar produto', error: e, stackTrace: s);
      throw const RepositoryException(message: 'Erro Ao Buscar Produtos');
    }
  }
}
