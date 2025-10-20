import 'package:flutter/material.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Halaman Profile"), leading: SizedBox(),),
      body: Center(
        child: Column(
          children: [
            Text("Ini Halaman Profile"),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () {
              Navigator.of(context).pop();
            }, child: Text("Kembali")),
          ],
        ),
      ),
    );
  }
}
