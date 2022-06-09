import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Future<dynamic> CustomAlert(BuildContext context, String teks) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text("Profil"),
        content: Text(teks),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("Konfirmasi"),
          ),
        ],
      );
    },
  );
}
