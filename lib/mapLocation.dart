import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class mapLocation extends StatelessWidget {
  const mapLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(
          "WindBreaker",
          style: GoogleFonts.pacifico(),
        ),
      ),
    );
  }
}
