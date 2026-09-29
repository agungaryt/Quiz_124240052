import 'package:flutter/material.dart';

import '../models/culinaryModel.dart';

class DetailPage extends StatefulWidget {
  final Culinary culinary;
  const DetailPage({super.key, required this.culinary});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.culinary.name),
        backgroundColor: const Color.fromARGB(255, 0, 0, 195),
        foregroundColor: Colors.white,
        actions: [Icon(Icons.favorite)],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.network(
                  widget.culinary.imageUrl,
                  height: 180,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 20), // Jarak antar elemen
              Text(
                widget.culinary.name,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),

              Text(
                "Kategori:${widget.culinary.category} asal ${widget.culinary.origin}",
                style: const TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const SizedBox(height: 12),

              Text("Bahan Utama : ${widget.culinary.mainIngredient}"),
              const SizedBox(height: 4),
              Text("Rasa : ${widget.culinary.flavor}"),
              const SizedBox(height: 4),
              Text("Tingkat Kepedasan : ${widget.culinary.spicyLevel}"),
              const SizedBox(height: 4),
              Text("Waktu saji : ${widget.culinary.servingTime}"),
              const SizedBox(height: 16),

              const Text(
                "Deskripsi:",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 6),
              Text(widget.culinary.description, textAlign: TextAlign.justify),
              const SizedBox(height: 12),

              Text(
                "Sumber : ${widget.culinary.wikipediaUrl}",
                style: const TextStyle(color: Colors.blue),
              ),
              const SizedBox(height: 24),

              // 7. Tombol Kembali
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 0, 0, 195),
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("Kembali ke Home"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
