import 'package:flutter/material.dart';

class DataMahasiswa extends StatefulWidget {
  const DataMahasiswa({super.key});

  @override
  State<DataMahasiswa> createState() => _DataMahasiswaState();
}

class _DataMahasiswaState extends State<DataMahasiswa> {
  TextEditingController nama = TextEditingController();
  TextEditingController alamat = TextEditingController();
  TextEditingController telp = TextEditingController();

  String alamatMhs = "";
  String namaMhs = "";
  String telpMhs = "";

  void getDataMahasiswa() {
    setState(() {
      namaMhs = nama.text;
      alamatMhs = alamat.text;
      telpMhs = telp.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade400,
        leading: const Icon(Icons.menu_book, color: Colors.white, size: 20),
        title: const Text(
          "Data Mahasiswa",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
        actions: const [
          Icon(Icons.search, color: Colors.white, size: 20),
          Icon(
            Icons.add,
            color: Colors.white,
            size: 20,
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.fromLTRB(30, 30, 30, 20),
              child: Text(
                "Entri Data",
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 10),
              child: TextField(
                controller: nama,
                decoration: InputDecoration(
                  labelText: "Nama Mahasiswa :",
                  hintText: "entri nama",
                  labelStyle: const TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                  suffixIcon: const Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(
                      Icons.face_2,
                      color: Colors.green,
                      size: 20,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.green.shade50,
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 3.0,
                        color: Color.fromARGB(255, 236, 221, 221),
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                ),
                maxLength: 50,
                maxLines: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: TextField(
                controller: alamat,
                decoration: InputDecoration(
                  labelText: "Alamat Mahasiswa :",
                  hintText: "entri alamat",
                  labelStyle: const TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                  suffixIcon: const Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(
                      Icons.home_filled,
                      color: Colors.green,
                      size: 20,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.green.shade50,
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 3.0,
                        color: Color.fromARGB(255, 236, 221, 221),
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                ),
                maxLength: 30,
                maxLines: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 10),
              child: TextField(
                controller: telp,
                decoration: InputDecoration(
                  labelText: "Telp Mahasiswa :",
                  hintText: "entri no_telp",
                  labelStyle: const TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                  suffixIcon: const Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(
                      Icons.face_2,
                      color: Colors.green,
                      size: 20,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.green.shade50,
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 3.0,
                        color: Color.fromARGB(255, 236, 221, 221),
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                ),
                maxLength: 50,
                maxLines: 1,
              ),
            ),
            SizedBox(
              height: 40,
              width: 160,
              child: ElevatedButton(
                  onPressed: getDataMahasiswa,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade400),
                  child: const Text(
                    "ENTRI",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Text(
                "Data Mahasiswa \nNama: $namaMhs \nAlamat: $alamatMhs \nNo. Telp: $telpMhs",
                style: const TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
