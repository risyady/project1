import 'package:flutter/material.dart';

class DaftarMenuMakanan extends StatefulWidget {
  const DaftarMenuMakanan({super.key});

  @override
  State<DaftarMenuMakanan> createState() => _DaftarMenuMakananState();
}

class _DaftarMenuMakananState extends State<DaftarMenuMakanan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade400,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            size: 22,
            color: Colors.white,
          ),
        ),
        title: const Text(
          "Daftar Menu Kafe TRPL C",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
              size: 22,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 22,
              color: Colors.white,
            ),
          ),
        ],
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
        backgroundColor: Colors.green.shade400,
      ),
      body: Card(
        shadowColor: Colors.green.shade50,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        margin: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text(
              "Menu Makanan dan Minuman",
              style: TextStyle(
                fontSize: 20,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            ListTile(
              leading: Image.asset(
                'images/bakso.jpg',
                height: 75,
                width: 75,
              ),
              title: const Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      "Bakso",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 3),
                    child: Text(
                      "Rp 10.000",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              subtitle: const Text(
                "Bakso terbuat dari daging sapi atau daging ayam yang dihaluskan.",
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.orange,
                ),
              ),
            ),
            const SizedBox(height: 5),
            ListTile(
              leading: Image.asset(
                'images/gudeg.jpg',
                height: 75,
                width: 75,
              ),
              title: const Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      "Gudeg",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 3),
                    child: Text(
                      "Rp 12.000",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              subtitle: const Text(
                "Terbuat dari nangka muda yang dimasak dengan santan, gula aren, dan rempah-rempah.",
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.orange,
                ),
              ),
            ),
            const SizedBox(height: 5),
            ListTile(
              leading: Image.asset(
                'images/lumpia.jpg',
                height: 75,
                width: 75,
              ),
              title: const Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      "Lumpia",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 3),
                    child: Text(
                      "Rp 5.000",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              subtitle: const Text(
                "Lumpia terbuat dari rebung sebagai isiannya dan diselimuti oleh kulit yang terbuat dari tepung.",
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.orange,
                ),
              ),
            ),
            const SizedBox(height: 5),
            ListTile(
              leading: Image.asset(
                'images/nasi_goreng.jpg',
                height: 75,
                width: 75,
              ),
              title: const Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      "Nasi",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 3),
                    child: Text(
                      "Rp 20.000",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              subtitle: const Text(
                "Nasi goreng adalah makanan berupa nasi yang digoreng.",
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.orange,
                ),
              ),
            ),
            const SizedBox(height: 5),
            ListTile(
              leading: Image.asset(
                'images/nasi_liwet.jpg',
                height: 75,
                width: 75,
              ),
              title: const Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      "Liwet",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 3),
                    child: Text(
                      "Rp 16.000",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              subtitle: const Text(
                "Nasi liwet biasanya dimasak dengan santan kelapa, dan berbagai rempah.",
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.orange,
                ),
              ),
            ),
            const SizedBox(height: 5),
            ListTile(
              leading: Image.asset(
                'images/pempek.jpg',
                height: 75,
                width: 75,
              ),
              title: const Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      "Pempek",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 3),
                    child: Text(
                      "Rp 7.000",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              subtitle: const Text(
                "Pempek terbuat dari adonan tepung dan ikan giling yang digoreng.",
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.orange,
                ),
              ),
            ),
            const SizedBox(height: 5),
            /*ListTile(
              leading: Image.asset(
                'images/rawon.jpg',
                height: 75,
                width: 75,
              ),
              title: const Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      "Rawon",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 3),
                    child: Text(
                      "Rp 15.000",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              subtitle: const Text(
                "Masakan sup daging berkuah hitam dengan campuran bumbu khas.",
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.orange,
                ),
              ),
            ),
            */
          ],
        ),
      ),
    );
  }
}
