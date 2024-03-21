import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  List<Map<String, String>> data = [
    {
      'img': 'image/ride.png',
      'text': 'GoRide',
    },
    {
      'img': 'image/car.png',
      'text': 'GoCar',
    },
     {
      'img': 'image/food.png',
      'text': 'GoFood',
    },
     {
      'img': 'image/send.png',
      'text': 'GoSend',
    },
     {
      'img': 'image/shop.png',
      'text': 'GoMart',
    },
     {
      'img': 'image/phone.png',
      'text': 'GoPulsa',
    },
     {
      'img': 'image/care.png',
      'text': 'CheckIn',
    },
     {
      'img': 'image/other.png',
      'text': 'Lainnya',
    },
  ]; 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan 7 Bonus',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Gojek'),          
          backgroundColor: const Color.fromARGB(255, 23, 175, 0),
          titleTextStyle: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18.0,
            fontFamily: 'Poppins',
            color: Colors.white,
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.account_circle_rounded),
              color: Colors.white,
              onPressed: () {
                // icon account di tap
              },
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              color: Colors.white,
              onPressed: () {
                // icon setting ditap
              },
            ),
          ],
        ),
        body: Column(          
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(              
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                padding: EdgeInsets.only(left: 20.0, top: 20.0),
                  child: Text(
                    'Your Favorites',
                    style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), 
                    fontWeight: FontWeight.w700, 
                    fontSize:  20.0,
                    fontFamily: 'Poppins'), 
                  ),
                ),
                Padding(
                padding: const EdgeInsets.only(right: 20.0, top: 20.0),                
                  child: ElevatedButton(
                    onPressed: () {
                      // Tindakan ketika tombol ditekan
                    },
                    style: ElevatedButton.styleFrom(                  
                      side: const BorderSide(color: Color.fromARGB(255, 23, 175, 0), 
                      width: 1),
                      backgroundColor: Colors.white,                   
                    ),
                    child: const Text(
                      'Edit',                  
                      style: TextStyle(color: Color.fromARGB(255, 23, 175, 0), 
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins'), 
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, // Mengatur jumlah kolom menjadi 4
                  crossAxisSpacing: 0.5,
                  mainAxisSpacing: 0.5,
                  childAspectRatio: 1.0, // Mengatur rasio lebar-tinggi item dalam grid
                ),
                itemCount: data.length, // Jumlah item dalam grid
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      // Tindakan ketika item grid ditekan
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          data[index]['img']!, 
                          width: 50.0,
                          height: 50.0,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 5.0),
                        Text(
                          data[index]['text']!, // Teks di bawah gambar dari data
                          style: const TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            color: Color.fromARGB(255, 169, 169, 169),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              )
            ),
          ],
        ),
      ),
    );
  }
}
