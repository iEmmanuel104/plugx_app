import 'package:flutter/material.dart';
import 'package:plugx_app/screens/inner_screens/airtime_screen.dart';
import 'package:plugx_app/screens/inner_screens/betting_screen.dart';
import 'package:plugx_app/screens/inner_screens/crypto_currency_screen.dart';
import 'package:plugx_app/screens/inner_screens/data_screen.dart';
import 'package:plugx_app/screens/inner_screens/electricity_screen.dart';
import 'package:plugx_app/screens/inner_screens/gift_cards_screen.dart';
import '../widgets/service_button.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF161622),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const Center(
                  child: Text(
                    'Services',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search Services',
                      hintStyle: const TextStyle(color: Color(0xFFBBBBC1)),
                      prefixIcon:
                          const Icon(Icons.search, color: Color(0xFFBBBBC1)),
                      filled: true,
                      fillColor: const Color(0xFF232533),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  color: const Color(0xFF232533),
                  padding: const EdgeInsets.all(12.0),
                  width: double.infinity,
                  child: const Text(
                    'Exchanges',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    ServiceButton(
                      icon: 'assets/images/crypto_icon.png',
                      label: 'Crypto',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const CryptoCurrencyScreen()),
                        );
                      },
                    ),
                    const SizedBox(width: 20),
                    ServiceButton(
                      icon: 'assets/images/giftcards_icon.png',
                      label: 'Giftcards',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const GiftCardScreen()),
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Container(
                  color: const Color(0xFF232533),
                  padding: const EdgeInsets.all(12.0),
                  width: double.infinity,
                  child: const Text(
                    'Utilities',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: [
                    ServiceButton( icon: 'assets/images/airtime_icon.png', label: 'Airtime',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AirtimeScreen()),
                        );
                      },
                    ),
                    ServiceButton(
                      icon: 'assets/images/data_icon.png',
                      label: 'Data',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DataScreen()),
                        );
                      },
                    ),
                    ServiceButton(
                      icon: 'assets/images/electricity_icon.png',
                      label: 'Electricity',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ElectricityScreen()),
                        );
                      },
                    ),
                    ServiceButton(
                      icon: 'assets/images/betting_icon.png',
                      label: 'Betting',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BettingScreen()),
                          );
                        },
                    ),
                    ServiceButton(
                      icon: 'assets/images/tv_icon.png',
                      label: 'TV',
                      onPressed: () {
                        // Implement TV screen navigation
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
