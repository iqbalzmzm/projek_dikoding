import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muhammadiqbalzamzami_1915016122_projekdikoding/alert.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController ControllNama = TextEditingController();
  TextEditingController ControllUmur = TextEditingController();
  TextEditingController ControllJenisK = TextEditingController();
  TextEditingController ControllBerat = TextEditingController();
  TextEditingController ControllTinggi = TextEditingController();

  String Nama = "";
  String Umur = "";
  List<String> JenisK = ["Laki-laki", "Perempuan"];
  String JKgroup = "";
  String Berat = "";
  String Tinggi = "";

  bool syarat = false;

  @override
  void dispose() {
    ControllNama.text = "";
    ControllUmur.text = "";
    ControllBerat.text = "";
    ControllTinggi.text = "";
    super.dispose();
  }

  void hapus() {
    ControllNama.text = "";
    ControllUmur.text = "";
    ControllJenisK.text = "";
    ControllTinggi.text = "";
    ControllBerat.text = "";
  }

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text(
            "WindBreaker",
            style: GoogleFonts.pacifico(),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 148, 145, 145),
        body: ListView(
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Container(
                child: Text("My Profil",
                    style: GoogleFonts.acme(
                        textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ))),
              ),
              Text(
                  "Halo $Nama , Selamat berosepeda\nUmur: $Umur\nJenis Kelamin: $JKgroup\nBerat: $Berat\nTinggi: $Tinggi"),
              Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    TextField(
                      controller: ControllNama,
                      keyboardType: TextInputType.name,
                      style: new TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(255, 255, 255, 255),
                        hintText: 'Nama Lengkap Anda',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    TextField(
                      controller: ControllUmur,
                      keyboardType: TextInputType.text,
                      style: new TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(255, 255, 255, 255),
                        hintText: 'Umur Anda',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 20, left: 20),
                child: Text(
                  "Jenis Kelamin",
                  style: GoogleFonts.oswald(
                      textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: Column(
                  children: [
                    for (var item in JenisK)
                      Row(
                        children: [
                          Radio(
                            value: item,
                            groupValue: JKgroup,
                            onChanged: (newValue) {
                              setState(() {
                                JKgroup = newValue.toString();
                              });
                            },
                          ),
                          Text(
                            item,
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 30, left: 20),
                  alignment: Alignment.topLeft,
                  child: Text('Tinggi Badan',
                      style: GoogleFonts.oswald(
                          textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )))),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.only(left: 20, right: 440),
                child: Column(
                  children: [
                    TextField(
                      controller: ControllTinggi,
                      keyboardType: TextInputType.text,
                      style: new TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(255, 255, 255, 255),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 30, left: 20),
                  alignment: Alignment.topLeft,
                  child: Text('Berat Badan',
                      style: GoogleFonts.oswald(
                          textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )))),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 20, bottom: 50),
                padding: EdgeInsets.only(left: 20, right: 440),
                child: Column(
                  children: [
                    TextField(
                      controller: ControllBerat,
                      keyboardType: TextInputType.text,
                      style: new TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(255, 255, 255, 255),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 10, bottom: 20),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Checkbox(
                          value: syarat,
                          onChanged: (bool? value) {
                            setState(() {
                              syarat = value!;
                            });
                          },
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(right: 45),
                          child: Text(
                            "Menyetujui syarat yang sudah berlaku. Apabila terjadi sesuatu kepada anda,\nbukan tanggung jawab kami.",
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 255, 0, 0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    ElevatedButton(
                      child: Text(
                        "Submit",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        CustomAlert(context, "Profil Telah Dibuat");
                      },
                    ),
                  ],
                ),
              ),
            ])
          ],
        ));
  }
}
