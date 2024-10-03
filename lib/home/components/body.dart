import 'package:aspen_project/home/components/ulasan.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:aspen_project/details/bali.dart';
import 'package:aspen_project/details/lombok.dart';
import 'package:aspen_project/details/toba.dart';
import 'package:aspen_project/home/components/lokasi.dart';
import 'package:aspen_project/home/components/popular_card.dart';
import 'package:aspen_project/home/components/recommended_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Mari Trevel",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.location_on, color: Colors.blue),
                    Text('Indonesia'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Colors.blue,
                  width: 2,
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Cari Destinasimu',
                  prefixIcon: const Icon(Icons.search),
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.transparent),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.transparent),
                  ),
                  filled: true,
                  fillColor: Colors.transparent,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Lokasi(),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Populer :',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Lihat Semua',
                  style: TextStyle(fontSize: 16, color: Colors.blue),
                ),
              ],
            ),
            const SizedBox(height: 10),
            CarouselSlider(
              options: CarouselOptions(
                height: 250.0,
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 5),
                viewportFraction: 0.7,
              ),
              items: [
                PopularCard(
                  title: 'Bali',
                  rating: 4.3,
                  imageAssets: 'assets/images/bali.png',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BaliScreen(),
                      ),
                    );
                  },
                ),
                PopularCard(
                  title: 'Lombok',
                  rating: 4.5,
                  imageAssets: 'assets/images/komodo.png',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LombokScreen(),
                      ),
                    );
                  },
                ),
                PopularCard(
                  title: 'Danau Toba',
                  rating: 5.0,
                  imageAssets: 'assets/images/toba.png',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TobaScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Rekomendasi :',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            CarouselSlider(
              options: CarouselOptions(
                height: 150,
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 5),
                viewportFraction: 0.5,
                scrollDirection: Axis.horizontal,
              ),
              items: const [
                RecommendedCard(
                  title: 'Jembatan Ampera',
                  days: '4N/5D',
                  imageAssets: 'assets/images/ampera.png',
                ),
                RecommendedCard(
                  title: 'Pontianak',
                  days: '2N/3D',
                  imageAssets: 'assets/images/ponti.png',
                ),
                RecommendedCard(
                  title: 'Bangka Belitung',
                  days: '2N/3D',
                  imageAssets: 'assets/images/bangka.png',
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Ulasan :',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            // Segmen Ulasan
            const Ulasan(),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
