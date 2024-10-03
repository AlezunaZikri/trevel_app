import 'package:flutter/material.dart';

class Lokasi extends StatefulWidget {
  const Lokasi({super.key});

  @override
  _LokasiState createState() => _LokasiState();
}

class _LokasiState extends State<Lokasi> {
  String selectedLocation = 'Lokasi';

  final List<String> locations = [
    'Lokasi',
    'Hotel',
    'Makanan',
    'Petualang',
    'Aktivitas',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: locations.map((location) {
            bool isSelected = selectedLocation == location;
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedLocation = location; // Update selected location
                });
              },
              child: Container(
                margin: const EdgeInsets.only(right: 10.0),
                decoration: BoxDecoration(
                  color: isSelected ? Colors.blue[100] : Colors.transparent,
                  borderRadius: BorderRadius.circular(15),
                  border: isSelected
                      ? Border.all(color: Colors.blue, width: 2)
                      : null,
                ),
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: Text(
                  location,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: isSelected ? Colors.blue : Colors.black,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
