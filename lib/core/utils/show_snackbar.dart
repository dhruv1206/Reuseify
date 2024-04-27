import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String content,
    {Color? backgroundColor}) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        content: Text(
          content,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        backgroundColor: backgroundColor,
      ),
    );
}
