import 'package:flutter/material.dart';
import 'cart_page.dart';

// HomePage menggunakan StatefulWidget karena ada state pencarian dan favorit.
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

// State untuk HomePage.
class _HomePageState extends State<HomePage> {
  String search = '';
  bool favorite = false;

  @override
  Widget build(BuildContext context) {
    // Menentukan apakah produk ditampilkan berdasarkan pencarian.
    bool tampilHelm =
    'helm full face'.contains(search.toLowerCase());

    bool tampilJaket =
    'jaket riding'.contains(search.toLowerCase());

    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      // SafeArea menjaga isi halaman.
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // Bagian judul dan tombol.
                Row(
                  children: [
                    const Expanded(
                      child: Text(
                        'MotoGear',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    // Tombol keranjang.
                    IconButton(
                      icon: const Icon(
                        Icons.shopping_cart_outlined,
                        size: 28,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const CartPage(
                              produk: 'Helm Full Face',
                              harga: 450000,
                              gambar: 'assets/helm.jpeg',
                            ),
                          ),
                        );
                      },
                    ),

                    // Tombol favorit.
                    IconButton(
                      icon: Icon(
                        favorite
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: favorite ? Colors.red : Colors.black,
                        size: 28,
                      ),
                      onPressed: () {
                        setState(() {
                          favorite = !favorite;
                        });
                      },
                    ),
                  ],
                ),

                const Text(
                  'Perlengkapan Motor untuk Setiap Perjalanan',
                  style: TextStyle(color: Colors.grey),
                ),

                const SizedBox(height: 20),

                // Search produk.
                TextField(
                  onChanged: (value) {
                    setState(() {
                      search = value;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: 'Cari perlengkapan motor...',
                    prefixIcon: const Icon(Icons.search),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                const Text(
                  'Halo, Rider! 👋',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 5),

                const Text(
                  'Lengkapi kebutuhan riding kamu di MotoGear.',
                  style: TextStyle(color: Colors.grey),
                ),

                const SizedBox(height: 20),

                // Banner.
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade800,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.two_wheeler,
                        color: Colors.white,
                        size: 45,
                      ),

                      SizedBox(width: 15),

                      Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          Text(
                            'PERLENGKAPAN RIDING',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Aman • Nyaman • Stylish',
                            style: TextStyle(
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                const Text(
                  'Kategori',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 15),

                // Kategori.
                const Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.sports_motorsports,
                          size: 30,
                        ),
                        Text('Helm'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.checkroom,
                          size: 30,
                        ),
                        Text('Jaket'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.back_hand,
                          size: 30,
                        ),
                        Text('Sarung'),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 30),

                const Text(
                  'Produk',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 15),

                // Produk ditampilkan sesuai pencarian.
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    // Helm hanya tampil jika sesuai pencarian.
                    if (tampilHelm)
                      Expanded(
                        child: _productCard(
                          'Helm Full Face',
                          'Rp450.000',
                          Icons.sports_motorsports,
                          'assets/helm.jpeg',
                        ),
                      ),

                    // Jarak hanya jika kedua produk tampil.
                    if (tampilHelm && tampilJaket)
                      const SizedBox(width: 10),

                    // Jaket hanya tampil jika sesuai pencarian.
                    if (tampilJaket)
                      Expanded(
                        child: _productCard(
                          'Jaket Riding',
                          'Rp650.000',
                          Icons.checkroom,
                          'assets/jaket.jpeg',
                        ),
                      ),
                  ],
                ),

                // Jika produk tidak ditemukan.
                if (!tampilHelm && !tampilJaket)
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.all(30),
                      child: Text(
                        'Produk tidak ditemukan.',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),

                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Widget kartu produk.
  Widget _productCard(
      String nama,
      String harga,
      IconData icon,
      String gambar,
      ) {
    return GestureDetector(
      // Ketika produk diklik, masuk ke keranjang.
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => CartPage(
              produk: nama,
              harga: nama == 'Helm Full Face'
                  ? 450000
                  : 650000,
              gambar: gambar,
            ),
          ),
        );
      },

      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              // Icon produk.
              Icon(
                icon,
                size: 60,
                color: Colors.blue.shade800,
              ),

              const SizedBox(height: 8),

              // Nama produk.
              Text(
                nama,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),

              // Harga produk.
              Text(harga),

              const SizedBox(height: 8),

              // Petunjuk bahwa produk bisa diklik.
              const Text(
                'Lihat produk',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}