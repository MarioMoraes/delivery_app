import 'package:dw9_vakinha_burger_bloc/app/pages/home/home_page.dart';
import 'package:dw9_vakinha_burger_bloc/app/repositories/products/products_repository.dart';
import 'package:dw9_vakinha_burger_bloc/app/repositories/products/products_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller/home_controller.dart';

class HomeRouter {
  HomeRouter._();

  static Widget get page => MultiProvider(
        providers: [
          Provider<ProductsRepository>(
            create: (context) => ProductsRepositoryImpl(
              dio: context.read(),
            ),
          ),
          Provider(
            create: (context) => HomeController(
              repository: context.read(),
            ),
          ),
        ],
        child: const HomePage(),
      );
}
