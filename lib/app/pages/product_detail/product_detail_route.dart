import 'package:dw9_vakinha_burger_bloc/app/pages/product_detail/controller/product_detail_controller.dart';
import 'package:dw9_vakinha_burger_bloc/app/pages/product_detail/product_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDetailRouter {
  ProductDetailRouter._();

  static Widget get page => MultiProvider(
        providers: [
          Provider(create: (context) => ProductDetailController()),
        ],
        builder: (context, child) {
          var args = ModalRoute.of(context)!.settings.arguments
              as Map<String, dynamic>;
          return ProductDetailPage(
            product: args['product'],
          );
        },
      );
}
