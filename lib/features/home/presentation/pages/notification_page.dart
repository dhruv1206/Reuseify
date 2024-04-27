import 'package:flutter/material.dart';

import '../../../../core/theme/app_pallete.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPallete.secondaryColor,
      appBar: AppBar(
        title: const Text(
          "NOTIFICATION",
        ),
      ),
      body: const Center(
        child: Text(
          "NOTIFICATION",
          style: TextStyle(
            color: AppPallete.backgroundColor,
          ),
        ),
      ),
    );
  }
}
