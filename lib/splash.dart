import 'package:flutter/material.dart';
import 'package:muhammadiqbalzamzami_1915016122_projekdikoding/main.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 2000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => landingPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                child: Image.asset(
              "wb2.jpg",
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.height / 3,
            )),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Text(
                'WIND BREAKER',
                style: GoogleFonts.pacifico(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
