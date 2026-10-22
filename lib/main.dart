import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Galeri Foto',
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Galeri Foto'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gambar dari URL sumber daya tugas
            Container(
              child: Image.network(
                'https://picsum.photos/id/88/300/200',
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),

            // Judul Foto
            const Center(
              child: Text(
                'Jalan di Barcelona',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 8),
            const Divider(thickness: 1),

            // Informasi Lokasi
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
              child: Row(
                children: const [
                  Icon(Icons.place, color: Colors.red, size: 20),
                  SizedBox(width: 10),
                  Text(
                    'Lokasi: Barcelona, Spanyol',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),

            // Informasi Publikasi
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
              child: Row(
                children: const [
                  Icon(Icons.calendar_month, color: Colors.blue, size: 20),
                  SizedBox(width: 10),
                  Text(
                    'Publikasi: 13 Agustus 2013',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),

            const Divider(thickness: 1),
            const SizedBox(height: 8),

            // Bagian Deskripsi
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Deskripsi',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Sebuah persimpangan jalan di Barcelona, Spanyol. Foto ini menampilkan berbagai kendaraan yang bergerak dalam arah yang berbeda, menciptakan pemandangan yang sibuk dan energik.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black87,
                      height: 1.4,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}