// lib/screens/home_screen.dart
import 'package:flutter/material.dart';
import 'package:smart_botol/core/theme.dart';
import 'package:smart_botol/shared/widgets/custom_bottom_nav.dart';
// import '../shared/widgets/custom_bottom_nav.dart';
// import '../utils/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.health_and_safety, color: AppTheme.primaryColor),
                  ),
                  Text(
                    'Drink Today',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.primaryColor,
                    ),
                  ),
                  Column(
                    children: [
                      Icon(Icons.battery_std, color: Colors.black),
                      Text('50 %', style: TextStyle(color: Colors.black)),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Text(
                  '100',
                  style: TextStyle(
                    fontSize: 64,
                    fontWeight: FontWeight.bold,
                    color: AppTheme.textPrimary,
                  ),
                ),
                Text(
                  'of 2000 ml',
                  style: TextStyle(fontSize: 20, color: Colors.black54),
                ),
                const SizedBox(height: 16),
                Icon(Icons.add, size: 32, color: AppTheme.textPrimary),
              ],
            ),
            const CustomBottomNav(),
          ],
        ),
      ),
    );
  }
}
