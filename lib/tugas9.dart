import 'package:flutter/material.dart';

void main() {
  runApp(const tugas9());
}



List<String> kategori = [
  '',
  'Sayuran',
  'Elektronik',
  'Pakaian Pria',
  'Pakaian Wanita',
  'Alat Tulis Kantor',
  'Buku & Majalah',
  'Peralatan Dapur',
  'Makanan Ringan',
  'Minuman',
];



List<Map<String, dynamic>> kategoriMap = [
  {'nama': 'Buah-buahan', 'icon': Icons.apple},
  {'nama': 'Sayuran', 'icon': Icons.eco},
  {'nama': 'Elektronik', 'icon': Icons.devices},
  {'nama': 'Pakaian Pria', 'icon': Icons.man},
  {'nama': 'Pakaian Wanita', 'icon': Icons.woman},
  {'nama': 'Alat Tulis Kantor', 'icon': Icons.edit},
  {'nama': 'Buku & Majalah', 'icon': Icons.book},
  {'nama': 'Peralatan Dapur', 'icon': Icons.kitchen},
  {'nama': 'Makanan Ringan', 'icon': Icons.fastfood},
  {'nama': 'Minuman', 'icon': Icons.local_drink},
];



class Produk {
  String nama;
  String deskripsi;
  String gambar;

  Produk(this.nama, this.deskripsi, this.gambar);
}



List<Produk> produk = [
  Produk(
    'Apel',
    'Apel segar dan manis',
    'https://images.unsplash.com/photo-1560806887-1e4cd0b6cbd6',
  ),
  Produk(
    'Pisang',
    'Pisang matang dan manis',
    'https://images.unsplash.com/photo-1571771894821-ce9b6c11b08e',
  ),
  Produk(
    'Jeruk',
    'Jeruk segar dan manis',
    'https://images.unsplash.com/photo-1547514701-42782101795e',
  ),
  Produk(
    'Mangga',
    'Mangga harum manis',
    'https://images.unsplash.com/photo-1553279768-865429fa0078',
  ),
  Produk(
    'Semangka',
    'Semangka merah dan segar',
    'https://images.unsplash.com/photo-1563114773-84221bd62daa',
  ),
  Produk(
    'Stroberi',
    'Stroberi merah dan segar',
    'https://images.unsplash.com/photo-1464965911861-746a04b4bca6',
  ),
  Produk(
    'Anggur',
    'Anggur manis dan segar',
    'https://images.unsplash.com/photo-1537640538966-79f369143f8f',
  ),
  Produk(
    'Nanas',
    'Nanas manis dan segar',
    'https://images.unsplash.com/photo-1550258987-190a2d41a8ba',
  ),
  Produk(
    'Pepaya',
    'Pepaya matang dan manis',
    'https://images.unsplash.com/photo-1526318472351-c75fcf070305',
  ),
  Produk(
    'Alpukat',
    'Alpukat lembut dan segar',
    'https://images.unsplash.com/photo-1523049673857-eb18f1d7b578',
  ),
];



class tugas9 extends StatelessWidget {
  const tugas9({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Toko Askur'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'List'),
              Tab(text: 'Map'),
              Tab(text: 'Model'),
            ],
          ),
        ),

        body: const TabBarView(
          children: [
            HalamanList(),
            HalamanMap(),
            HalamanModel(),
          ],
        ),
      ),
    );
  }
}



class HalamanList extends StatelessWidget {
  const HalamanList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: kategori.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(kategori[index]),
        );
      },
    );
  }
}



class HalamanMap extends StatelessWidget {
  const HalamanMap({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: kategoriMap.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(kategoriMap[index]['icon']),
          title: Text(kategoriMap[index]['nama']),
        );
      },
    );
  }
}



class HalamanModel extends StatelessWidget {
  const HalamanModel({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: produk.length,
      itemBuilder: (context, index) {
        return ListProduk(produk[index]);
      },
    );
  }
}



class ListProduk extends StatelessWidget {
  final Produk produk;

  const ListProduk(this.produk, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(
        produk.gambar,
        width: 70,
        height: 70,
        fit: BoxFit.cover,
      ),
      title: Text(produk.nama),
      subtitle: Text(produk.deskripsi),
    );
  }
}