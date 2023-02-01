import 'package:dw9_vakinha_burger_bloc/app/core/provider/application_binding.dart';
import 'package:dw9_vakinha_burger_bloc/app/pages/home/home_router.dart';
import 'package:dw9_vakinha_burger_bloc/app/pages/product_detail/product_detail_route.dart';
import 'package:flutter/material.dart';

import 'core/global/global_context.dart';
import 'core/ui/theme/theme_config.dart';
import 'pages/splash/splash_page.dart';

class DwDeliveryApp extends StatelessWidget {
  final _navigatorKey = GlobalKey<NavigatorState>();

  DwDeliveryApp({super.key}) {
    GlobalContext.i.navigatorKey = _navigatorKey;
  }

  @override
  Widget build(BuildContext context) {
    return ApplicationBinding(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme,
        navigatorKey: _navigatorKey,
        title: 'Delivery App',
        routes: {
          '/': (_) => const SplashPage(),
          '/home': (_) => HomeRouter.page,
          '/product-detail': (context) => ProductDetailRouter.page,
        },
      ),
    );
  }
}
