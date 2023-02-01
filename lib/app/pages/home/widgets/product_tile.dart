import 'package:dw9_vakinha_burger_bloc/app/core/extensions/formatter_extension.dart';
import 'package:dw9_vakinha_burger_bloc/app/core/ui/styles/app_colors.dart';
import 'package:dw9_vakinha_burger_bloc/app/core/ui/styles/text_styles.dart';
import 'package:dw9_vakinha_burger_bloc/app/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  final ProductModel productModel;

  const ProductTile({Key? key, required this.productModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    productModel.name,
                    style:
                        context.textStyles.textExtraBold.copyWith(fontSize: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    productModel.description,
                    style: context.textStyles.textMedium.copyWith(fontSize: 13),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    productModel.price.currencyPtBr,
                    style: context.textStyles.textMedium.copyWith(
                      fontSize: 11,
                      color: context.appColors.secondary,
                    ),
                  ),
                ),
              ],
            ),
          ),
          FadeInImage.assetNetwork(
            placeholder: 'assets/images/loading.gif',
            image: productModel.image,
            width: 100,
            height: 100,
            fit: BoxFit.contain,
          )
        ],
      ),
    );
  }
}
