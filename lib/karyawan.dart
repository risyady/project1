import 'package:flutter/material.dart';

class Karyawan extends StatefulWidget {
  const Karyawan({super.key});

  @override
  State<Karyawan> createState() => _KaryawanState();
}

class _KaryawanState extends State<Karyawan> {
  TextEditingController namaKaryawan = TextEditingController();
  TextEditingController gajiPokokKaryawan = TextEditingController();
  TextEditingController tunjanganKaryawan = TextEditingController();

  String nmKar = "";
  String gpKar = "";
  String tjKar = "";

  String totalGaji = "";

  void clear() {
    setState(() {
      namaKaryawan.text = "";
      gajiPokokKaryawan.text = "";
      tunjanganKaryawan.text = "";
      getGaji();
    });
  }

  void getGaji() {
    setState(() {
      nmKar = namaKaryawan.text;
      gpKar = gajiPokokKaryawan.text;
      tjKar = tunjanganKaryawan.text;

      double gajiPokok = double.tryParse(gajiPokokKaryawan.text) ?? 0.0;
      double tunjangan = double.tryParse(tunjanganKaryawan.text) ?? 0.0;
      totalGaji = (gajiPokok + tunjangan).toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade400,
        title: const Text(
          "Matematika Karyawan",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.camera_alt_rounded,
                size: 18,
                color: Colors.white,
              ),
              label: 'Camera'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.call,
                size: 18,
                color: Colors.white,
              ),
              label: 'Calls'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.chat_bubble_rounded,
                size: 18,
                color: Colors.white,
              ),
              label: 'Chats'),
        ],
        backgroundColor: Colors.teal.shade400,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(bottom: 40),
              child: Text(
                "Perhitungan Gaji",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: TextField(
                controller: namaKaryawan,
                decoration: const InputDecoration(
                  labelText: "Nama Karyawan",
                  hintText: "entri nama",
                  labelStyle: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  suffixIcon: Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(
                      Icons.person_outline,
                      color: Colors.red,
                      size: 20,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 3.0,
                        color: Color.fromARGB(255, 236, 221, 221),
                        style: BorderStyle.solid),
                  ),
                ),
                maxLength: 50,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: TextField(
                controller: gajiPokokKaryawan,
                decoration: const InputDecoration(
                  labelText: "Gaji Pokok",
                  hintText: "entri gaji",
                  labelStyle: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  suffixIcon: Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(
                      Icons.money_rounded,
                      color: Colors.red,
                      size: 20,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 3.0,
                        color: Color.fromARGB(255, 236, 221, 221),
                        style: BorderStyle.solid),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 30),
              child: TextField(
                controller: tunjanganKaryawan,
                decoration: const InputDecoration(
                  labelText: "Tunjangan",
                  hintText: "entri tunjangan",
                  labelStyle: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  suffixIcon: Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(
                      Icons.monetization_on_outlined,
                      color: Colors.red,
                      size: 20,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 3.0,
                        color: Color.fromARGB(255, 236, 221, 221),
                        style: BorderStyle.solid),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                  child: SizedBox(
                    height: 40,
                    child: ElevatedButton(
                      onPressed: getGaji,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      child: const Text(
                        "HITUNG",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                  child: SizedBox(
                    height: 40,
                    child: ElevatedButton(
                      onPressed: clear,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      child: const Text(
                        "CLEAR",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 10),
              child: Text(
                "Hasil\nNama Karyawan: $nmKar\nGaji Pokok: $gpKar\nTunjangan: $tjKar\nTotal Gaji: $totalGaji",
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
