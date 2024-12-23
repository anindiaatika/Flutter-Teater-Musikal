import 'package:flutter/material.dart';
import 'package:teatermusik/teater_detail.dart';
import 'package:teatermusik/models/daftar_teater.dart'; 

void main() {
  runApp(TeaterApp());  // Fungsi main untuk memulai aplikasi
}

class TeaterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daftar Musik Teater',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TeaterListScreen(),  // Menentukan screen utama untuk aplikasi
    );
  }
}

class TeaterListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Daftar Teater Musikal'),
          ),
          body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth <= 600) {
                return const TeaterListView();
              } else if (constraints.maxWidth <= 1200) {
                return const TeaterGridView(gridCount: 4);
              } else {
                return const TeaterGridView(gridCount: 6);
              }
            },
          ),
        );
      },
    );
  }
}

// ListView untuk perangkat kecil
class TeaterListView extends StatelessWidget {
  const TeaterListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemBuilder: (context, index) {
          final Teater teater = teaterList[index]; // Pastikan teaterList sudah ada dan terisi
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return TeaterDetail(teater: teater);  // Pastikan TeaterDetail sudah ada
              }));
            },
            child: Card(
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        teater.imageAsset,
                        fit: BoxFit.cover,
                        height: 100,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            teater.title,
                            style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          Text(teater.location, style: const TextStyle(color: Colors.grey)),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              const Icon(Icons.calendar_today, size: 16, color: Colors.blue),
                              const SizedBox(width: 4),
                              Text(teater.showDays, style: const TextStyle(fontSize: 14)),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Icons.access_time, size: 16, color: Colors.blue),
                              const SizedBox(width: 4),
                              Text(teater.showTime, style: const TextStyle(fontSize: 14)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
        itemCount: teaterList.length,  // Pastikan teaterList terdefinisi dengan benar
      ),
    );
  }
}

// GridView untuk perangkat besar
class TeaterGridView extends StatelessWidget {
  final int gridCount;

  const TeaterGridView({Key? key, required this.gridCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.count(
        crossAxisCount: gridCount,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: teaterList.map((teater) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return TeaterDetail(teater: teater);  // Pastikan TeaterDetail sudah ada
              }));
            },
            child: Card(
              elevation: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                      ),
                      child: Image.asset(
                        teater.imageAsset,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      teater.title,
                      style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      teater.location,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
