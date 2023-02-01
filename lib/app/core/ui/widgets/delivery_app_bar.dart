import 'package:flutter/material.dart';

class DeliveryAppBar extends AppBar {
  DeliveryAppBar({super.key, double elevation = 0})
      : super(
          elevation: elevation,
          title: Text('Delivery Burger',
              style: TextStyle(
                fontSize: 24,
                color: Colors.amber.shade900,
                fontWeight: FontWeight.w500,
              )),
        );
}
