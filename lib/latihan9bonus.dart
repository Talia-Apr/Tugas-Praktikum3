import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  _MyAppState createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<Map<String, String>> data = [
    {
      'img': 'image/vac.jpeg',
      'text': 'COVID-19',
      'text2' : 'Vaccine'
    },
    {
      'img': 'image/tes.jpeg',
      'text': 'Covid-19',
      'text2': 'Test Result',
    },
     {
      'img': 'image/ehac.jpeg',
      'text': 'EHAC',
      'text2': '',
    },
     {
      'img': 'image/trv.jpeg',
      'text': 'Travel',
      'text2': 'Regulations',
    },
     {
      'img': 'image/tele.jpeg',
      'text': 'Telemedicine',
      'text2': '',
    },
     {
      'img': 'image/heal.jpeg',
      'text': 'Healthcare',
      'text2': 'Facility',
    },
     {
      'img': 'image/analis.jpeg',
      'text': 'Covid-19',
      'text2': 'Analistic',
    },
     {
      'img': 'image/find.jpeg',
      'text': 'Find Hospital',
      'text2': 'Bed',
    },
  ];  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Latihan 9 Bonus",
      home: Scaffold(

        // FLOATTING BUTTON
        floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Tindakan ke button
        },
        backgroundColor: Colors.white,
        foregroundColor: const Color.fromARGB(255, 37, 115, 163), // Ubah warna ikon di sini
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0), // Membuat FAB bundar
        ),
        child: const Icon(Icons.question_mark_rounded),
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
                            fontFamily: 'Poppins',
                          ),
                        ),
                        SizedBox(height: 10), // Spacer
                        Text(
                          'Stay alert to stay safe',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 15.0,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Positioned(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10.0, left: 60.0),
                            child: IconButton(
                              icon: const Icon(Icons.info),
                              color: Colors.white,
                              onPressed: () {
                                // Add your onPressed action here
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0, right: 0, bottom: 0),
                          child: Image.asset(
                            'image/hand.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // CONTAINER 2
            Positioned(
              top: 110,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius:  const BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                  border: Border.all(
                    color: const Color.fromARGB(255, 213, 213, 213),
                  ),
                ),
                padding: const EdgeInsets.all(14),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 0),
                      child: IconButton(
                        icon: const Icon(Icons.keyboard_arrow_down),
                        color: Colors.black,
                        onPressed: () {
                          // Add your onPressed action here
                        },
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: const Text(
                        'Check-In Preference',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 13.0,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // Tindakan ketika tombol ditekan
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(255, 221, 242, 255),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.qr_code_scanner_rounded, color: Color.fromARGB(255, 37, 115, 163)),
                                SizedBox(width: 10),
                                Text(
                                  'Check-In',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 37, 115, 163),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // GRID VIEW
            Positioned(
              top: 200, // Sesuaikan dengan posisi konten sebelumnya
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
                    childAspectRatio: 1.0,
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
                        Image.asset(
                          data[index]['img']!, 
                          width: 100.0,
                          height: 100.0,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 5.0),
                        Text(
                          data[index]['text']!,
                          style: const TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins',
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                        Text(
                          data[index]['text2']!,
                          style: const TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins',
                            color: Color.fromARGB(255, 0, 0, 0),
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
