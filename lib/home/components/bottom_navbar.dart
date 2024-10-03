import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    if (index == _selectedIndex) return; // Prevents triggering the same index

    setState(() {
      _selectedIndex = index;
    });

    // Menampilkan SnackBar dengan pesan yang berbeda berdasarkan item yang dipilih
    String message = '';
    switch (index) {
      case 0:
        message = 'Home Selected!';
        break;
      case 1:
        message = 'Save Selected!';
        break;
      case 2:
        message = 'Favorites Selected!';
        break;
      case 3:
        message = 'Profile Selected!';
        break;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(fontSize: 14, color: Colors.black),
        ),
        duration: const Duration(seconds: 1),
        backgroundColor: Colors.transparent,
      ),
    );

    // Mengatur ulang animasi ketika item dipilih
    _animationController.forward().then((_) => _animationController.reverse());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(50)), // Radius lebih besar
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 10,
            spreadRadius: 2,
            offset: const Offset(0, -3),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(50)), // Radius lebih besar
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: _buildIcon(Icons.home, 0),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: _buildIcon(Icons.playlist_add_check_circle, 1),
              label: 'Save',
            ),
            BottomNavigationBarItem(
              icon: _buildIcon(Icons.favorite, 2),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: _buildIcon(Icons.person, 3),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black, // Ikon yang dipilih berwarna hitam
          unselectedItemColor: Colors.white, // Ikon yang tidak dipilih berwarna putih
          showSelectedLabels: true,
          showUnselectedLabels: true,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue, // Background icon menjadi biru
        ),
      ),
    );
  }

  Widget _buildIcon(IconData icon, int index) {
    // Check if the index is selected
    bool isSelected = index == _selectedIndex;

    return ScaleTransition(
      scale: Tween<double>(
        begin: 1.0,
        end: isSelected ? 1.2 : 1.0,
      ).animate(
        CurvedAnimation(
          parent: _animationController,
          curve: Curves.easeInOut,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(8.0), // Memberikan padding untuk background
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue : Colors.transparent, // Background icon
          borderRadius: BorderRadius.circular(20), // Sudut background icon
        ),
        child: Icon(
          icon,
          size: 30,
          color: isSelected ? Colors.black : Colors.white, // Mengubah warna ikon sesuai dengan status terpilih
        ),
      ),
    );
  }
}
