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
  Map<String,String> data = {
  "Talia":"Memasak", 
  "Desi":"Menonton", 
  "Cika":"Menulis",
  "Deren":"Mendaki",
  "Adi":"Bermain Futsal",
  "Yulian":"Kuliner"}; //data untuk listview  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Latihan 6",
        home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 241, 241, 241),
          appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('List View'),
          titleTextStyle: const TextStyle(
          fontSize: 18.0, 
          color: Colors.white,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600),     
        ),
          body: MyHomePage(data: data),
        ));
  }
}

class MyHomePage extends StatelessWidget {
  final Map<String,String> data;

  const MyHomePage({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        var key = data.keys.elementAt(index);
        var value = data[key];
        return Card(
          child: ListTile(
            onTap: () {},
            leading: Image.network(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'
            ),
            trailing: const Icon(Icons.more_vert),
            title: Text(key), 
              titleTextStyle: const TextStyle(
              fontWeight: FontWeight.bold, 
              fontSize: 15.0, 
              color: Colors.black,
              fontFamily: 'Poppins'),
            subtitle: Text(value ?? ''),
              subtitleTextStyle: const TextStyle(
              fontSize: 12.0, 
              fontFamily: 'Poppins',
              color: Colors.grey),
            tileColor: Colors.white70
          ),
        );
      },
    );
  }
}
