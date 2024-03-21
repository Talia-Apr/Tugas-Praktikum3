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
  List<String> data = ['GoRide', 'GoCar',
  'GoFood','GoSend','GoMart','GoPulsa','CheckIn','Lainnya'];
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan 7',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Goyek'),          
          backgroundColor: Colors.blue,
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
                  padding: const EdgeInsets.only(right: 20, top: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      // Tindakan saat button ditekan 
                    },
                    child: Text(
                      'Edit', 
                      style: TextStyle(
                        fontSize: 15, 
                        color: Colors.white,
                      ),
                    ),
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
                        Image.network(
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                          width: 50.0,
                          height: 50.0,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 5.0),
                        Text(
                          data[index], // Teks di bawah gambar dari data
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
