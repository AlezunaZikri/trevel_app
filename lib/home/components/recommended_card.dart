import 'package:flutter/material.dart';

class RecommendedCard extends StatelessWidget {
  final String title;
  final String days;
  final String imageAssets;

  const RecommendedCard({
    super.key,
    required this.title,
    required this.days,
    required this.imageAssets,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        width: 180, // Tetapkan lebar tetap
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey[300], // Ganti dengan gambar
          image: DecorationImage(
            image: AssetImage(imageAssets),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Background untuk Title
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(
                      0.5), // Background warna hitam dengan transparansi
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white, // Warna teks
                  ),
                ),
              ),
              // Background untuk Days
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(
                      0.5), // Background warna hitam dengan transparansi
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  days,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
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
