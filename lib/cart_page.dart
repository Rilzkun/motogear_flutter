import 'package:flutter/material.dart';

// CartPage menggunakan StatefulWidget karena jumlah produk dapat berubah.
class CartPage extends StatefulWidget {
  final String produk;
  final int harga;
  final String gambar;

  const CartPage({
    super.key,
    required this.produk,
    required this.harga,
    required this.gambar,
  });

  @override
  State<CartPage> createState() => _CartPageState();
}

// State untuk CartPage.
class _CartPageState extends State<CartPage> {
  int jumlah = 1;

  @override
  Widget build(BuildContext context) {
    // Menghitung subtotal.
    int subtotal = widget.harga * jumlah;

    // Menghitung total dengan ongkir.
    int total = subtotal + 20000;

    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      // AppBar halaman keranjang.
      appBar: AppBar(
        title: const Text('Keranjang MotoGear'),
        backgroundColor: Colors.grey.shade100,
        elevation: 0,

        // Tombol kembali.
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

      // Isi keranjang.
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const Text(
                'Produk di Keranjang',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              // Card produk.
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      // Gambar produk.
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          widget.gambar,
                          width: 110,
                          height: 110,
                          fit: BoxFit.cover,
                        ),
                      ),

                      const SizedBox(width: 15),

                      // Informasi produk.
                      Expanded(
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.produk,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),

                            const SizedBox(height: 8),

                            Text(
                              'Rp${widget.harga}',
                              style: TextStyle(
                                color: Colors.blue.shade800,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            const SizedBox(height: 10),

                            // Tombol jumlah.
                            Row(
                              children: [
                                // Tombol kurang.
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (jumlah > 1) {
                                        jumlah--;
                                      }
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.remove,
                                  ),
                                ),

                                // Jumlah produk.
                                Text(
                                  '$jumlah',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),

                                // Tombol tambah.
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      jumlah++;
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.add,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Ringkasan belanja.
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Ringkasan Belanja',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 15),

                      Text(
                        '${widget.produk} x$jumlah',
                      ),

                      const SizedBox(height: 8),

                      Text(
                        'Subtotal       Rp$subtotal',
                      ),

                      const SizedBox(height: 8),

                      const Text(
                        'Ongkir          Rp20000',
                      ),

                      const Divider(height: 25),

                      // Total otomatis berubah.
                      Text(
                        'Total           Rp$total',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue.shade800,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Tombol kembali.
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade800,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text(
                    'Kembali ke Beranda',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}