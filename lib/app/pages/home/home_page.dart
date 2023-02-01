import 'package:dw9_vakinha_burger_bloc/app/pages/home/controller/home_state.dart';
import 'package:dw9_vakinha_burger_bloc/app/pages/home/widgets/product_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/ui/base_state/base_state.dart';
import '../../core/ui/widgets/delivery_app_bar.dart';
import 'controller/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends BaseState<HomePage, HomeController> {
  @override
  void onReady() => controller.findAllProducts();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DeliveryAppBar(),
      body: BlocConsumer<HomeController, HomeState>(
        bloc: controller,
        listener: (context, state) {
          state.status.matchAny(
            any: () => hideLoader(),
            loading: () => showLoader(),
            error: () {
              hideLoader();
              showError(state.errorMessage!);
            },
          );
        },
        buildWhen: (_, current) => current.status.matchAny(
          any: () => false,
          loaded: () => true,
        ),
        builder: (context, state) {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: state.listProducts.length,
                  itemBuilder: (context, index) {
                    final product = state.listProducts[index];
                    return ProductTile(productModel: product);
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
