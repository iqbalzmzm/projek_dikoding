import 'dart:html';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muhammadiqbalzamzami_1915016122_projekdikoding/Profile.dart';
import 'package:muhammadiqbalzamzami_1915016122_projekdikoding/home.dart';
import 'package:muhammadiqbalzamzami_1915016122_projekdikoding/mapLocation.dart';
import 'package:muhammadiqbalzamzami_1915016122_projekdikoding/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Wind Breaker",
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}

class landingPage extends StatelessWidget {
  const landingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("pemandangan.jpg"),
                        fit: BoxFit.cover),
                  ),
                  padding: EdgeInsets.only(right: 220, top: 80),
                  child: Text(
                      "Check for good weather\n conditions before cycling.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.spectral(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                        color: Colors.black,
                      ))),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("stretching.jpg"), fit: BoxFit.cover),
                  ),
                  padding: EdgeInsets.only(left: 220, top: 80),
                  child: Text("Warm up before cycling.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.spectral(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                        color: Colors.black,
                      ))),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("kalender.jpg"), fit: BoxFit.cover),
                  ),
                  padding: EdgeInsets.only(right: 220, top: 80),
                  child:
                      Text("Choose free time for\n cycling in your schedule.",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.spectral(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal,
                            color: Colors.black,
                          ))),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("sepeda.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  padding: EdgeInsets.only(left: 220, top: 80),
                  child: Text(
                      "Explore, plan or change up your next \nactivity with personalized segment and route suggestions",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.spectral(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                        color: Colors.white,
                      ))),
              Container(
                width: 220,
                height: 55,
                margin: EdgeInsets.only(top: 20),
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return myButton();
                    }));
                  },
                  child: Text(
                    "Let's Riding",
                    style: GoogleFonts.almarai(
                        textStyle: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class myButton extends StatefulWidget {
  const myButton({Key? key}) : super(key: key);

  @override
  State<myButton> createState() => _myButtonState();
}

class _myButtonState extends State<myButton> {
  final List<BottomNavigationBarItem> _myWidget = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.map_outlined),
      label: 'Location',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Profile',
    ),
  ];

  final List<Widget> _myViews = [
    home(),
    mapLocation(),
    Profile(),
  ];

  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _myViews.elementAt(_pageIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIndex,
        items: _myWidget,
        onTap: (int newIndex) {
          setState(
            () {
              _pageIndex = newIndex;
            },
          );
        },
      ),
    );
  }
}
