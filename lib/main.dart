// // lib/main.dart
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:smart_botol/features/activity/widgets/activity_chart.dart';
// import 'package:smart_botol/features/activity/widgets/history_card.dart';
// import 'package:smart_botol/features/activity/widgets/time_period_selector.dart';
// import 'package:smart_botol/shared/widgets/custom_bottom_nav.dart';

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   SystemChrome.setSystemUIOverlayStyle(
//     const SystemUiOverlayStyle(
//       statusBarColor: Colors.transparent,
//       statusBarIconBrightness: Brightness.dark,
//     ),
//   );
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Water Tracker',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primaryColor: const Color(0xFF7BBED5),
//         scaffoldBackgroundColor: const Color(0xFFB5E8F7),
//         fontFamily: 'Poppins',
//       ),
//       home: const ActivityScreen(),
//     );
//   }
// }


// class ActivityScreen extends StatelessWidget {
//   const ActivityScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // Header
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Container(
//                         padding: const EdgeInsets.all(8),
//                         decoration: const BoxDecoration(
//                           color: Colors.white,
//                           shape: BoxShape.circle,
//                         ),
//                         child: const Icon(
//                           Icons.water_drop,
//                           color: Color(0xFF7BBED5),
//                         ),
//                       ),
//                       const Text(
//                         'Activity',
//                         style: TextStyle(
//                           fontSize: 24,
//                           fontWeight: FontWeight.bold,
//                           color: Color(0xFF2171B5),
//                         ),
//                       ),
//                       IconButton(
//                         icon: const Icon(
//                           Icons.help_outline,
//                           color: Color(0xFF2171B5),
//                         ),
//                         onPressed: () {},
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 24),

//                   // Chart
//                   const ActivityChart(),
//                   const SizedBox(height: 24),

//                   // Time Period Selector
//                   const Center(child: TimePeriodSelector()),
//                   const SizedBox(height: 24),

//                   // History Section
//                   const Text(
//                     'History',
//                     style: TextStyle(
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                       color: Color(0xFF2171B5),
//                     ),
//                   ),
//                   const Text(
//                     'Today',
//                     style: TextStyle(
//                       fontSize: 16,
//                       color: Colors.grey,
//                     ),
//                   ),
//                   const SizedBox(height: 16),
//                 ],
//               ),
//             ),

//             // History List
//             Expanded(
//               child: ListView(
//                 padding: const EdgeInsets.symmetric(horizontal: 16),
//                 children: const [
//                   HistoryCard(amount: '50 ml', time: '8 a.m.'),
//                   HistoryCard(amount: '20 ml', time: '1:05 p.m.'),
//                   HistoryCard(amount: '30 ml', time: '3:15 p.m.'),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: const Padding(
//         padding: EdgeInsets.only(bottom: 16),
//         child: CustomBottomNav(),
//       ),
//     );
//   }
// }

// untuk drink_today
// lib/main.dart
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:smart_botol/features/activity/widgets/activity_chart.dart';
// import 'package:smart_botol/features/activity/widgets/history_card.dart';
// import 'package:smart_botol/features/activity/widgets/time_period_selector.dart';
// import 'package:smart_botol/features/drink_today/screens/home_screen.dart'; 
// import 'package:smart_botol/shared/widgets/custom_bottom_nav.dart';

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   SystemChrome.setSystemUIOverlayStyle(
//     const SystemUiOverlayStyle(
//       statusBarColor: Colors.transparent,
//       statusBarIconBrightness: Brightness.dark,
//     ),
//   );
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Water Tracker',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primaryColor: const Color(0xFF7BBED5),
//         scaffoldBackgroundColor: const Color(0xFFB5E8F7),
//         fontFamily: 'Poppins',
//       ),
//       home: const HomeScreen(), // Ubah ini menjadi HomeScreen
//     );
//   }
// }

// untuk profile
// import 'package:flutter/material.dart';
// import 'package:smart_botol/features/profile/screens/profile_screen.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'HyRe Bottle',
//       theme: ThemeData(
//         primaryColor: const Color(0xFF7BBED5),
//         scaffoldBackgroundColor: const Color(0xFFB5E8F7),
//         fontFamily: 'Poppins',
//       ),
//       home:  ProfileScreen(),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smart_botol/features/activity/screens/activity_screen.dart';
import 'package:smart_botol/features/discover/screens/discover_screen.dart';
import 'package:smart_botol/features/drink_today/screens/home_screen.dart';
import 'package:smart_botol/features/profile/screens/profile_screen.dart';
import 'package:smart_botol/shared/widgets/custom_bottom_nav.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HyRe Bottle',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF7BBED5),
        scaffoldBackgroundColor: const Color(0xFFB5E8F7),
        fontFamily: 'Poppins',
      ),
      home: const LoginScreen(), // Menetapkan halaman login sebagai tampilan utama
    );
  }
}

// Halaman Login
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Setelah login berhasil, pindah ke MainScreen
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const MainScreen()),
            );
          },
          child: const Text('Login'),
        ),
      ),
    );
  }
}

// Halaman Utama dengan Bottom Navigation
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  // Daftar halaman sesuai fitur
  final List<Widget> _pages = [
    ProfileScreen(),
    DiscoverScreen(),
    const ActivityScreen(),
    const HomeScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _pages[_selectedIndex]),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: CustomBottomNav(
          selectedIndex: _selectedIndex,
          onItemTapped: _onItemTapped,
        ),
      ),
    );
  }
}

