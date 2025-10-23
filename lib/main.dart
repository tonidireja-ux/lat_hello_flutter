import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Data Tagihan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DataTagihanPage(),
              
    );
  }
}

class DataTagihanPage extends StatelessWidget {
  const DataTagihanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Tagihan'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Nama: Toni Direja',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Bulan: Oktober 2025',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            const Text(
              'Jumlah Bayar: Rp 150.000',
              style: TextStyle(fontSize: 16, color: Colors.green),
            ),
            const SizedBox(height: 20),
            const Divider(thickness: 1),
            const SizedBox(height: 10),
            // Tambahkan contoh daftar tagihan
            const Text(
              'Riwayat Tagihan:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: const [
                  ListTile(
                    leading: Icon(Icons.payment, color: Colors.blue),
                    title: Text('September 2025'),
                    subtitle: Text('Rp 150.000'),
                    trailing: Text('Lunas'),
                  ),
                  ListTile(
                    leading: Icon(Icons.payment, color: Colors.blue),
                    title: Text('Agustus 2025'),
                    subtitle: Text('Rp 150.000'),
                    trailing: Text('Lunas'),
                  ),
                  ListTile(
                    leading: Icon(Icons.warning, color: Colors.red),
                    title: Text('Juli 2025'),
                    subtitle: Text('Rp 150.000'),
                    trailing: Text('Belum Lunas'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
