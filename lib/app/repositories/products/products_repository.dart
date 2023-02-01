import 'package:dw9_vakinha_burger_bloc/app/models/product_model.dart';

abstract class ProductsRepository {
  Future<List<ProductModel>> findAll();
}
