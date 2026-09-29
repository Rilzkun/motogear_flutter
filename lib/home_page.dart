import 'package:flutter/material.dart';
import 'cart_page.dart';

// Halaman utama aplikasi
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Mengatur warna background halaman
      backgroundColor: Colors.grey.shade100,

      // Isi utama halaman
      body: SafeArea(
        // SafeArea membuat isi tidak tertutup area perangkat
        child: SingleChildScrollView(
          // SingleChildScrollView membuat halaman dapat di-scroll
          child: Padding(
            // Padding memberikan jarak dari tepi layar
            padding: const EdgeInsets.all(20),

            // Column menyusun widget secara vertikal
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // Row menyusun nama aplikasi dan icon secara horizontal
                Row(
                  children: [

                    // Expanded membuat Text mengambil ruang yang tersedia
                    const Expanded(
                      child: Text(
                        'MotoGear',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    // Icon keranjang dibuat sebagai tombol untuk membuka CartPage
                    IconButton(
                      icon: const Icon(
                        Icons.shopping_cart_outlined,
                        size: 28,
                      ),
                      onPressed: () {
                        // Navigator.push digunakan untuk membuka halaman Cart
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CartPage(),
                          ),
                        );
                      },
                    ),

                    // SizedBox memberikan jarak horizontal
                    const SizedBox(width: 15),

                    // Icon untuk favorit
                    const Icon(
                      Icons.favorite_border,
                      size: 28,
                    ),
                  ],
                ),

                // SizedBox memberikan jarak vertikal
                const SizedBox(height: 8),

                // Text untuk deskripsi aplikasi
                Text(
                  'Perlengkapan Motor untuk Setiap Perjalanan',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade600,
                  ),
                ),

                // SizedBox memberikan jarak
                const SizedBox(height: 20),

                // TextField digunakan untuk mencari produk
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Cari perlengkapan motor...',
                    prefixIcon: const Icon(Icons.search),

                    // Mengatur tampilan TextField
                    filled: true,
                    fillColor: Colors.white,

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),

                // SizedBox memberikan jarak
                const SizedBox(height: 25),

                // Text judul
                const Text(
                  'Halo, Rider! 👋',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                // SizedBox memberikan jarak
                const SizedBox(height: 5),

                // Text deskripsi
                Text(
                  'Lengkapi kebutuhan riding kamu di MotoGear.',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade600,
                  ),
                ),

                // SizedBox memberikan jarak
                const SizedBox(height: 20),

                // Container digunakan sebagai banner
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),

                  // BoxDecoration mengatur tampilan Container
                  decoration: BoxDecoration(
                    color: Colors.blue.shade800,
                    borderRadius: BorderRadius.circular(20),
                  ),

                  // Column menyusun isi banner secara vertikal
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [

                      // Icon motor
                      Icon(
                        Icons.two_wheeler,
                        color: Colors.white,
                        size: 45,
                      ),

                      // SizedBox memberikan jarak
                      SizedBox(height: 10),

                      // Text judul banner
                      Text(
                        'PERLENGKAPAN RIDING',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      // SizedBox memberikan jarak
                      SizedBox(height: 5),

                      // Text isi banner
                      Text(
                        'Aman • Nyaman • Stylish',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),

                // SizedBox memberikan jarak
                const SizedBox(height: 25),

                // Judul kategori
                const Text(
                  'Kategori',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                // SizedBox memberikan jarak
                const SizedBox(height: 15),

                // Row untuk menampilkan kategori
                Row(
                  children: [

                    // Expanded membuat kategori memiliki ruang yang sama
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),

                        child: Column(
                          children: const [

                            // Icon kategori helm
                            Icon(
                              Icons.sports_motorsports,
                              size: 35,
                            ),

                            // SizedBox memberikan jarak
                            SizedBox(height: 8),

                            // Text kategori
                            Text('Helm'),
                          ],
                        ),
                      ),
                    ),

                    // SizedBox memberikan jarak
                    const SizedBox(width: 10),

                    // Expanded kategori kedua
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),

                        child: Column(
                          children: const [

                            // Icon kategori jaket
                            Icon(
                              Icons.checkroom,
                              size: 35,
                            ),

                            // SizedBox memberikan jarak
                            SizedBox(height: 8),

                            // Text kategori
                            Text('Jaket'),
                          ],
                        ),
                      ),
                    ),

                    // SizedBox memberikan jarak
                    const SizedBox(width: 10),

                    // Expanded kategori ketiga
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),

                        child: Column(
                          children: const [

                            // Icon kategori sarung
                            Icon(
                              Icons.back_hand,
                              size: 35,
                            ),

                            // SizedBox memberikan jarak
                            SizedBox(height: 8),

                            // Text kategori
                            Text('Sarung'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                // SizedBox memberikan jarak
                const SizedBox(height: 25),

                // Judul produk
                const Text(
                  'Produk Pilihan',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                // SizedBox memberikan jarak
                const SizedBox(height: 15),

                // Row untuk produk
                Row(
                  children: [

                    // Produk pertama
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.push membuka halaman Cart
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CartPage(),
                            ),
                          );
                        },

                        child: Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [

                              // Icon produk
                              Icon(
                                Icons.sports_motorsports,
                                size: 70,
                              ),

                              // SizedBox memberikan jarak
                              SizedBox(height: 10),

                              // Nama produk
                              Text(
                                'Helm Full Face',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              // SizedBox memberikan jarak
                              SizedBox(height: 5),

                              // Harga produk
                              Text(
                                'Rp450.000',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    // SizedBox memberikan jarak antar produk
                    const SizedBox(width: 15),

                    // Produk kedua
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.push membuka halaman Cart
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CartPage(),
                            ),
                          );
                        },

                        child: Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [

                              // Icon produk
                              Icon(
                                Icons.checkroom,
                                size: 70,
                              ),

                              // SizedBox memberikan jarak
                              SizedBox(height: 10),

                              // Nama produk
                              Text(
                                'Jaket Riding',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              // SizedBox memberikan jarak
                              SizedBox(height: 5),

                              // Harga produk
                              Text(
                                'Rp650.000',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                // SizedBox memberikan jarak bagian bawah
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}