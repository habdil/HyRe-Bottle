import 'package:flutter/material.dart';
import '../widgets/activity_chart.dart';
import '../widgets/history_card.dart';
import '../widgets/time_period_selector.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFB5E8F7),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Image.asset('assets/icons/logo.png', height: 24),
                  ),
                  const Text(
                    'Activity',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2171B5),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.help_outline),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 20),
              
              // Chart
              const ActivityChart(),
              const SizedBox(height: 20),
              
              // Time Period Selector
              const TimePeriodSelector(),
              const SizedBox(height: 20),
              
              // History Section
              const Text(
                'History',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2171B5),
                ),
              ),
              const Text(
                'Today',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 10),
              
              // History Cards
              Expanded(
                child: ListView(
                  children: const [
                    HistoryCard(amount: '50 ml', time: '8 a.m.'),
                    HistoryCard(amount: '20 ml', time: '1:05 p.m.'),
                    HistoryCard(amount: '30 ml', time: '3:15 p.m.'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
