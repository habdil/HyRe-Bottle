// import 'package:flutter/material.dart';
// import '../widgets/infor_card.dart';
// import 'package:smart_botol/shared/widgets/custom_bottom_nav.dart';

// class DiscoverScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Discover"),
//         centerTitle: true,
//         backgroundColor: Color(0xFFE0F7FA),
//         elevation: 0,
//         actions: [
//           IconButton(
//             icon: Icon(Icons.help_outline, color: Colors.black),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             InfoCard(
//               title: "Explore Bottle",
//               content:
//                   "HyRe Bottle is a smart bottle with elegant design to use everywhere and anytime. This bottle reminds you to drink more water (2L).",
//             ),
//             InfoCard(
//               title: "How To Use",
//               content: "Do you feel confused about how to use this bottle?",
//             ),
//             InfoCard(
//               title: "How To Connect The Bottle",
//               content: "Can you help to connect this bottle?",
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: CustomBottomNav(),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:smart_botol/features/discover/widgets/infor_card.dart';
import '../widgets/info_card.dart';
import 'package:smart_botol/shared/widgets/custom_bottom_nav.dart';

class DiscoverScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Discover"),
        centerTitle: true,
        backgroundColor: Color(0xFFE0F7FA),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.help_outline, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            InfoCard(
              title: "Explore Bottle",
              content:
                  "HyRe Bottle is a smart bottle with elegant design to use everywhere and anytime. This bottle reminds you to drink more water (2L).",
            ),
            InfoCard(
              title: "How To Use",
              content: "Do you feel confused about how to use this bottle?",
            ),
            InfoCard(
              title: "How To Connect The Bottle",
              content: "Can you help to connect this bottle?",
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNav(
        selectedIndex: 1, // Sesuaikan index dengan posisi "Discover"
        onItemTapped: (index) {
          switch (index) {
            case 0:
              Navigator.pushReplacementNamed(context, '/home');
              break;
            case 1:
              Navigator.pushReplacementNamed(context, '/discover');
              break;
            case 2:
              Navigator.pushReplacementNamed(context, '/activity');
              break;
            case 3:
              Navigator.pushReplacementNamed(context, '/profile');
              break;
          }
        },
      ),
    );
  }
}
