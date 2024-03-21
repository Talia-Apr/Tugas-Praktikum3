import 'package:flutter/material.dart';

void main() {
  runApp(TwitterDesign());
}

class TwitterDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(      
      title: 'Latihan 8',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Tuiter',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(    
                  constraints: const BoxConstraints.expand(
                    height: 200,  
                  ),
                  color: Colors.grey[300],  
                  child: Image.network(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 24,
                            right: 20,
                            top: 60), // Tambahkan padding atas untuk teks
                        child: Text(
                          'UPI Official',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              left: 20,
              top: 158,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.red,
                    width: 3,
                  ),
                ),
                child: Image.network(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 210, // Atur posisi tombol Follow di bawah gambar besar
              right: 20,
              child: ElevatedButton(
                onPressed: () {
                  // Aksi ketika tombol Follow ditekan
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.blue,
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
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
                      fontWeight: FontWeight.bold,
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