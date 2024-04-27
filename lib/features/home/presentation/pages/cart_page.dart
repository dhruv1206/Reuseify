import 'package:flutter/material.dart';

import '../../../../core/theme/app_pallete.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPallete.secondaryColor,
      appBar: AppBar(
        title: const Text(
          "CART",
        ),
      ),
      body: const Center(
        child: Text(
          "CART",
          style: TextStyle(
            color: AppPallete.backgroundColor,
          ),
        ),
      ),
    );
  }
}
