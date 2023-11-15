import 'package:flutter/material.dart';

class Produk {
  final String nama;
  final double harga;

  Produk({required this.nama, required this.harga});
}

class barang extends StatefulWidget {
  const barang({Key? key}) : super(key: key);

  @override
  State<barang> createState() => _barangState();
}

class _barangState extends State<barang> {
  final List<Produk> produkList = [
    Produk(nama: 'Jersey A', harga: 100),
    Produk(nama: 'Jersey B', harga: 200),
    Produk(nama: 'Jersey C', harga: 300),
    Produk(nama: 'Jersey D', harga: 150),
    Produk(nama: 'Jersey E', harga: 250),
    Produk(nama: 'Jersey F', harga: 180),
    Produk(nama: 'Jersey G', harga: 280),
    Produk(nama: 'Jersey H', harga: 220),
    Produk(nama: 'Jersey I', harga: 320),
    Produk(nama: 'Jersey J', harga: 200),
    // Add more products here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Data Produk'),
      ),
      body: ListView.builder(
        itemCount: produkList.length,
        itemBuilder: (BuildContext context, int index) {
          final Produk produk = produkList[index];
          final int nomorUrut = index + 1;

          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.black38,
              child: Text(
                '$nomorUrut',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            title: Text(produk.nama),
            subtitle: Text('Harga: ${produk.harga.toString()}'),
            trailing: IconButton(
              icon: Icon(Icons.add_shopping_cart_rounded),
              onPressed: () {
                setState(() {
                  produkList.removeAt(index);
                });
              },
            ),
            onTap: () {
              // Aksi ketika item dipilih (jika diperlukan)
            },
          );
        },
      ),
    );
  }
}
