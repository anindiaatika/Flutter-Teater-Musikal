import 'package:flutter/material.dart';
import '../models/daftar_teater.dart';

class TeaterDetail extends StatelessWidget {
  final Teater teater;

  TeaterDetail({required this.teater});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(teater.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gambar Utama
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  width: double.infinity,
                  height: 200, // Tinggi gambar utama tetap
                  child: Image.asset(
                    teater.imageAsset,
                    fit: BoxFit.fitWidth, // Gambar tidak akan terpotong
                    alignment: Alignment.center, // Gambar berada di tengah
                  ),
                ),
              ),
            ),

            // Informasi Detail
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Lokasi
                  Row(
                    children: [
                      const Icon(Icons.location_on, color: Colors.blue),
                      const SizedBox(width: 8),
                      Text(
                        teater.location,
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // Deskripsi
                  Text(
                    teater.description,
                    style: const TextStyle(fontSize: 16),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 16),

                  // Informasi Waktu dan Harga
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _infoCard(Icons.calendar_today, "Hari", teater.showDays),
                      _infoCard(Icons.access_time, "Jam", teater.showTime),
                      _infoCard(Icons.price_check, "Harga", teater.ticketPrice),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // Galeri Gambar
                  const Text(
                    "Galeri",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 200, // Memperbesar tinggi gambar
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: teater.imageUrls.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            // Ketika gambar diklik, tampilkan dialog dengan carousel
                            showDialog(
                              context: context,
                              builder: (_) => Dialog(
                                backgroundColor: Colors.transparent,
                                child: SizedBox(
                                  height: MediaQuery.of(context).size.height * 0.6,
                                  child: PageView.builder(
                                    itemCount: teater.imageUrls.length,
                                    controller: PageController(initialPage: index),
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(12),
                                          child: Image.network(
                                            teater.imageUrls[index],
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.network(
                                teater.imageUrls[index],
                                width: 150, // Lebar gambar diperbesar
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget untuk Kartu Informasi
  Widget _infoCard(IconData icon, String title, String value) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue, size: 30),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
