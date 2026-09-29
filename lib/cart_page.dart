import 'package:flutter/material.dart';

// Halaman keranjang
class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Mengatur warna background halaman
      backgroundColor: Colors.grey.shade100,

      // AppBar digunakan sebagai bagian atas halaman
      appBar: AppBar(
        title: const Text('Keranjang MotoGear'),

        // Tombol kembali
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),

          onPressed: () {
            // Navigator.pop digunakan untuk kembali
            // ke halaman Home sebelumnya
            Navigator.pop(context);
          },
        ),
      ),

      // Isi halaman
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),

          // Column menyusun widget secara vertikal
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // Judul halaman
              const Text(
                'Produk di Keranjang',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              // SizedBox memberikan jarak
              const SizedBox(height: 20),

              // Container digunakan sebagai card produk
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(15),

                // BoxDecoration mengatur tampilan card
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),

                  // BoxShadow memberikan efek bayangan
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 10,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),

                // Stack digunakan untuk menumpuk gambar
                // dan label produk
                child: Stack(
                  children: [

                    // Row menyusun gambar dan informasi produk
                    Row(
                      children: [

                        // Image.asset digunakan untuk menampilkan
                        // gambar helm dari folder assets
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'assets/helm.jpeg',
                            width: 120,
                            height: 120,
                            fit: BoxFit.cover,
                          ),
                        ),

                        // SizedBox memberikan jarak
                        const SizedBox(width: 15),

                        // Expanded memberikan ruang untuk informasi
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              // Nama produk
                              Text(
                                'Helm Full Face',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              // SizedBox memberikan jarak
                              SizedBox(height: 8),

                              // Harga
                              Text(
                                'Rp450.000',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),

                              // SizedBox memberikan jarak
                              SizedBox(height: 8),

                              // Jumlah
                              Text(
                                'Jumlah: 1',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    // Positioned digunakan untuk menempatkan
                    // label di atas gambar produk
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          '10% OFF',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // SizedBox memberikan jarak
              const SizedBox(height: 20),

              // Card produk jaket
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(15),

                // BoxDecoration mengatur tampilan card
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),

                  // BoxShadow memberikan efek bayangan
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 10,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),

                // Stack digunakan untuk menumpuk gambar
                // dan informasi produk
                child: Stack(
                  children: [

                    // Row menyusun gambar dan informasi produk
                    Row(
                      children: [

                        // Image.asset digunakan untuk menampilkan
                        // gambar jaket dari folder assets
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'assets/jaket.jpeg',
                            width: 120,
                            height: 120,
                            fit: BoxFit.cover,
                          ),
                        ),

                        // SizedBox memberikan jarak
                        const SizedBox(width: 15),

                        // Expanded memberikan ruang untuk informasi
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              // Nama produk
                              Text(
                                'Jaket Riding',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              // SizedBox memberikan jarak
                              SizedBox(height: 8),

                              // Harga
                              Text(
                                'Rp650.000',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),

                              // SizedBox memberikan jarak
                              SizedBox(height: 8),

                              // Jumlah
                              Text(
                                'Jumlah: 1',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    // Positioned digunakan untuk menempatkan
                    // label di atas gambar jaket
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          '10% OFF',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Jarak sebelum ringkasan belanja
              const SizedBox(height: 20),

              // Card informasi
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(15),

                // BoxDecoration mengatur tampilan card
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),

                  // BoxShadow memberikan efek bayangan
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 10,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [

                    // Text ringkasan
                    Text(
                      'Ringkasan Belanja',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    // SizedBox memberikan jarak
                    SizedBox(height: 15),

                    // Text harga
                    Text(
                      'Subtotal                 Rp450.000',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),

                    // SizedBox memberikan jarak
                    SizedBox(height: 8),

                    // Text ongkir
                    Text(
                      'Ongkir                    Rp20.000',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),

                    // SizedBox memberikan jarak
                    SizedBox(height: 8),

                    // Text total
                    Text(
                      'Total                      Rp470.000',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              // SizedBox memberikan jarak
              const SizedBox(height: 25),

              // Tombol kembali
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.pop digunakan untuk kembali
                    // ke halaman utama
                    Navigator.pop(context);
                  },
                  child: const Text('Kembali ke Beranda'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}