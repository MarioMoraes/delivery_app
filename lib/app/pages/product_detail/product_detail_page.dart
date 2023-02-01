import 'package:dw9_vakinha_burger_bloc/app/core/ui/helpers/size_extensions.dart';
import 'package:flutter/material.dart';

import '../../core/ui/widgets/delivery_app_bar.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DeliveryAppBar(),
      body: Column(children: [
        Container(
          width: context.width,
          height: context.percentHeight(.4),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://assets.unileversolutions.com/recipes-v2/106684.jpg?imwidth=800')),
          ),
        ),
      ]),
    );
  }
}
