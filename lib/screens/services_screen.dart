import 'package:flutter/material.dart';
import '../widgets/service_button.dart';
import '../widgets/bottom_navigation_bar.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF161622),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Text(
                'Services',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search Services',
                  hintStyle: const TextStyle(color: Colors.grey),
                  prefixIcon: const Icon(Icons.search, color: Colors.grey),
                  filled: true,
                  fillColor: const Color(0xFF1E1E2D),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Exchanges',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  ServiceButton(
                      icon: 'assets/images/crypto_icon.png', label: 'Crypto'),
                  SizedBox(width: 20),
                  ServiceButton(
                      icon: 'assets/images/giftcards_icon.png',
                      label: 'Giftcards'),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Utilities',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  ServiceButton(
                      icon: 'assets/images/airtime_icon.png', label: 'Airtime'),
                  ServiceButton(
                      icon: 'assets/images/data_icon.png', label: 'Data'),
                  ServiceButton(
                      icon: 'assets/images/electricity_icon.png',
                      label: 'Electricity'),
                  ServiceButton(
                      icon: 'assets/images/betting_icon.png', label: 'Betting'),
                  ServiceButton(icon: 'assets/images/tv_icon.png', label: 'TV'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
