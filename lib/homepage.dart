import 'package:flutter/material.dart';
import 'package:stateles_stateful/profilepage.dart';

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
                  SnackBar(
                    content: Text("Akun Berhasil Dihapus"),
                    backgroundColor: Colors.red,
                    action: SnackBarAction(label: "Batal", onPressed: () {}),
                  ),
                );
              },
              child: Text("Snackbar"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profilepage()),
                );
              },
              child: Text("Halaman Profile"),
            ),
          ],
        ),
      ),
    );
  }
}
