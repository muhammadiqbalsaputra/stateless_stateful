// import 'dart:ffi';
// import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int nilai = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter")),
      body: Center(
        child: Column(
          children: [
            Text("$nilai"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    nilai--;
                    print(nilai);
                    setState(() {});
                  },
                  label: Text("Kurang"),
                  icon: Icon(Icons.remove),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    nilai++;
                    print(nilai);
                    setState(() {});
                  },
                  label: Text("Tambah"),
                  icon: Icon(Icons.add),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text("Peringatan"),
                    content: Text("Apakah anda yakin untuk menghapus akun ini"),
                    actions: [
                      TextButton(onPressed: () {}, child: Text("Batal")),
                      ElevatedButton(onPressed: () {}, child: Text("Ya")),
                    ],
                  ),
                );
              },
              child: Text("Contoh Dialog Hapus"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Akun Berhasil Dihapus")),
                );
              },
              child: Text("Snackbar"),
            ),
          ],
        ),
      ),
    );
  }
}

// class _MyAppState extends State<MyApp> {
//   // const MyApp({super.key});
//   int nilai = 0;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: Scaffold());
//   }
// }
