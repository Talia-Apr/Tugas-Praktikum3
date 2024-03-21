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
  List<String> data = ['Covid19 Vaccine','Covid19 Test Result','EHAC','Covid19 Vaccine','Covis19 Test Result','EHAC'];
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Latihan 9",
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Penuhi Lindungi',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Stack(
          children: [
            // PENGATURAN CONTAINER
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              width: double.infinity,
              height: double.infinity,
            ),

            // CONTAINER 1
            Positioned(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 11, 174, 255),
                ),
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Entering a public space?',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 18.0,
                            fontFamily: 'Roboto',
                          ),
                        ),
                        SizedBox(height: 10), // Spacer
                        Text(
                          'Stay alert to stay safe',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 15.0,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [                        
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10.0, right: 30, bottom: 10),
                          child: Image.network(
                            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                            width: 90,
                            height: 90,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 10),
            // GRID VIEW
            Positioned(
              top: 150, // Sesuaikan dengan posisi konten sebelumnya
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 0.5,
                    mainAxisSpacing: 0.5,
                    childAspectRatio: 1.5,
                  ),
                  itemCount: data.length,
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
                          const SizedBox(height: 10.0),
                          Text(
                            data[index],
                            style: const TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins',
                              color: Color.fromARGB(255, 169, 169, 169),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),         
      ),
    );
  }
}
