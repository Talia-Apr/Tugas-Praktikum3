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
  List<String> data = []; //data untuk listview

  @override
  void initState() {
    super.initState();
    // isi data listview
    for (int i = 0; i < 10; i++) {
      data.add("Data ke $i ");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Latihan 10",
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 9, 144, 255),
            bottom: const TabBar(
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 5.0,
              tabs: [
                Tab(
                  child: Align(
                    alignment: Alignment.center,                    
                    child: Text(
                      'For You',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Following',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView (
          children: [
            Center(
              child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      onTap: () {},
                      leading: const FlutterLogo(),
                      title: Text(
                        data[index],
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15.0,
                          color: Colors.black,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      tileColor: Colors.white70,
                    ),
                  );
                },
              ),
            ),
              Center(                
                child: GridView.count(
                  crossAxisCount: 2, // 2 kolom
                  children: List.generate(4, (index) {
                    return Container(
                      margin: const EdgeInsets.all(8.0),
                      child: Image.network(
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                        fit: BoxFit.cover,
                      ),
                    );
                  }),
                ),
              ),
            ],           
          ),
        ),
      ),
    );
  }
}
