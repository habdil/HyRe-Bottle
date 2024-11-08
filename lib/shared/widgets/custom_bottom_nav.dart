// import 'package:flutter/material.dart';

// class CustomBottomNav extends StatefulWidget {
//   const CustomBottomNav({super.key, required int selectedIndex, required void Function(int index) onItemTapped});

//   @override
//   _CustomBottomNavState createState() => _CustomBottomNavState();
// }

// class _CustomBottomNavState extends State<CustomBottomNav> {
//   int _selectedIndex = 0; // Menyimpan indeks fitur yang dipilih

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index; // Mengubah indeks ketika item dipilih
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 60,
//       margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//       decoration: BoxDecoration(
//         color: const Color(0xFF7BBED5),
//         borderRadius: BorderRadius.circular(30),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.1),
//             spreadRadius: 0,
//             blurRadius: 10,
//             offset: const Offset(0, 4),
//           ),
//         ],
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           _buildNavItem(Icons.water_drop, 0),
//           _buildNavItem(Icons.bar_chart_outlined, 1),
//           _buildNavItem(Icons.search, 2),
//           _buildNavItem(Icons.person_outline, 3),
//         ],
//       ),
//     );
//   }

//   Widget _buildNavItem(IconData icon, int index) {
//     bool isSelected = _selectedIndex == index; // Cek apakah item saat ini dipilih
//     return GestureDetector(
//       onTap: () => _onItemTapped(index), // Mengatur indeks saat item diklik
//       child: Container(
//         padding: const EdgeInsets.all(12),
//         decoration: BoxDecoration(
//           color: isSelected ? Colors.white.withOpacity(0.2) : Colors.transparent,
//           borderRadius: BorderRadius.circular(20),
//         ),
//         child: Icon(
//           icon,
//           color: Colors.white,
//           size: 24,
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class CustomBottomNav extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  const CustomBottomNav({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFF7BBED5),
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildNavItem(Icons.water_drop, 0),
          _buildNavItem(Icons.bar_chart_outlined, 1),
          _buildNavItem(Icons.search, 2),
          _buildNavItem(Icons.person_outline, 3),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, int index) {
    bool isSelected = selectedIndex == index;
    return GestureDetector(
      onTap: () => onItemTapped(index),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isSelected ? Colors.white.withOpacity(0.2) : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Icon(
          icon,
          color: Colors.white,
          size: 24,
        ),
      ),
    );
  }
}
