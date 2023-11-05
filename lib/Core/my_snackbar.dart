import 'package:find_transportes/Core/widget.dart';
import 'package:flutter/material.dart';

showSnackbar(
    {required BuildContext context,
    required String texto,
    bool isErro = true}) {
  SnackBar snackBar = SnackBar(
    content: Text(texto),
    backgroundColor: (isErro) ? Colors.red : defaultColor,
    duration: const Duration(seconds: 3),
    dismissDirection: DismissDirection.horizontal,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
