import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Biodata',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BiodataPage(),
    );
  }
}

class BiodataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Biodata Saya'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/profile_picture.jpg'), // Ganti dengan nama file gambar Anda
            ),
            SizedBox(height: 16),
            Text(
              'Nama: Yeza Yofanka',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Profesi: Desaigner Fashion',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Alamat: Bojongsari,Kembaran Kabupaten Banyumas',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Tambahkan aksi saat tombol ditekan
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Tombol ditekan')),
                );
              },
              child: Text('Hubungi Saya'),
            ),
          ],
        ),
      ),
    );
  }
}
