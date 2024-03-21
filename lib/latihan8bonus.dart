import 'package:flutter/material.dart';

void main() {
  runApp(UPNTwitterProfile());
}

class UPNTwitterProfile extends StatelessWidget {
  const UPNTwitterProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(      
      title: 'Latihan 8 Bonus',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [

                // WADAH BANNER
                Container(
                  constraints: const BoxConstraints.expand(
                    height: 150,
                  ),
                  child: Image.asset(
                    'image/header.jpeg',
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),

                // WADAH DESKRIPSI
                Container(
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 24, right: 20, top: 70),
                        child: Text(
                          'UPN Veteran Jawa Timur',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 24, right: 20, top: 3),
                        child: Text(
                          '@upnvjt_official',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            color: Color.fromARGB(255, 99, 99, 99),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 24, right: 20, top: 10),
                        child: Text(
                          'AKUN RESMI UPN "VETERAN" JAWA TIMUR Dikelola oleh Humas UPN "Veteran" Jawa Timur Kampus Bela Negara',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 17,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 24, right: 20, top: 10),
                        child: Text(
                          'Translate bio',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            //ICON BACK
            Stack(
              children: [
                Positioned(
                  left: 20,
                  top: 10,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(149, 41, 41, 41),
                    ),
                  ),
                ),
                Positioned(
                  left: 15,
                  top: 5,
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                    color: const Color.fromARGB(255, 31, 30, 30),
                    iconSize: 30,
                    padding: const EdgeInsets.all(10),
                    splashRadius: 25,
                    tooltip: 'Back',
                  ),
                )
              ],
            ),

            //ICON SEARCH
            Stack(
              children: [
                Positioned(
                  right: 75,
                  top: 10,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(149, 41, 41, 41),
                    ),
                  ),
                ),
                Positioned(
                  right: 70,
                  top: 5,
                  child: IconButton(
                    icon: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                    color: const Color.fromARGB(255, 31, 30, 30),
                    iconSize: 30,
                    padding: const EdgeInsets.all(10),
                    splashRadius: 25,
                    tooltip: 'Search',
                  ),
                )
              ],
            ),

            // ICON MORE
            Stack(
              children: [
                Positioned(
                  right: 20,
                  top: 10,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(149, 41, 41, 41),
                    ),
                  ),
                ),
                Positioned(
                  right: 15,
                  top: 5,
                  child: IconButton(
                    icon: const Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                    color: const Color.fromARGB(255, 31, 30, 30),
                    iconSize: 30,
                    padding: const EdgeInsets.all(10),
                    splashRadius: 25,
                    tooltip: 'More',
                  ),
                )
              ],
            ),

            // FOTO LINGKARAN
            Positioned(
              left: 20,
              top: 110,
              child: Container(
                width: 85,
                height: 85,
                decoration: BoxDecoration(
                  shape: BoxShape.circle, // Mengubah bentuk menjadi lingkaran
                  border: Border.all(
                    color: Colors.white,
                    width: 3,
                  ),
                ),
                child: ClipOval(
                  // memotong gambar menjadi lingkaran
                  child: Image.asset(
                    'image/profil.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            
            // BUTTON FOLLOW
            Positioned(
              top: 170, // Atur posisi tombol Follow di bawah gambar besar
              right: 20,
              child: ElevatedButton(
                onPressed: () {
                  // Aksi ketika tombol Follow ditekan
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.black,
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 6,
                    horizontal: 8,
                  ),
                  child: Text(
                    'Follow',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}