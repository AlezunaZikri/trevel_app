import 'package:flutter/material.dart';

class Ulasan extends StatelessWidget {
  const Ulasan({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildReviewCard(
          name: "El Fast",
          rating: 4,
          location: "Bali",
          review: "Pengalaman yang luar biasa! Sangat merekomendasikan.",
          imageUrl: 'assets/images/user1.jpeg',
        ),
        _buildReviewCard(
          name: "Aly Hasan",
          rating: 4,
          location: "Lombok",
          review: "Tempat yang indah dan pelayanan yang baik.",
          imageUrl: 'assets/images/user2.jpeg',
        ),
        _buildReviewCard(
          name: "Fabio Jr.",
          rating: 5,
          location: "Danau Toba",
          review: "Pemandangan yang menakjubkan! Wajib dikunjungi.",
          imageUrl: 'assets/images/user3.jpeg',
        ),
      ],
    );
  }
}

Widget _buildReviewCard({
  required String name,
  required int rating,
  required String location,
  required String review,
  required String imageUrl,
}) {
  return Card(
    margin: const EdgeInsets.symmetric(vertical: 10),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    elevation: 8, // Meningkatkan efek bayangan
    color: Colors.white, // Warna latar belakang kartu menjadi putih
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(imageUrl),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent.withOpacity(0.1), // Warna latar belakang untuk nama
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black, // Warna teks nama
                        ),
                      ),
                      Row(
                        children: List.generate(rating, (index) {
                          return const Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 16,
                          );
                        }),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent.withOpacity(0.1), // Warna latar belakang untuk lokasi
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    location,
                    style: const TextStyle(
                      color: Colors.black, // Warna teks lokasi
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  review,
                  style: const TextStyle(fontSize: 14,color: Colors.black),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
