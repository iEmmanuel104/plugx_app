import 'package:flutter/material.dart';
import '../widgets/transaction_item.dart';

class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF161622),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            const Center(
              child: Text(
                'Transaction History',
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
                  hintText: 'Search Transactions',
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
            Expanded(
              child: ListView(
                children: [
                  _buildDateSection('18/06/2024'),
                  const TransactionItem(
                    icon: 'assets/images/crypto_icon.png',
                    title: 'Crypto',
                    subtitle: 'Bitcoin Buy',
                    amount: '₦50,000.00',
                  ),
                  const TransactionItem(
                    icon: 'assets/images/airtime_icon.png',
                    title: 'Airtime',
                    subtitle: 'Airtime Purchase',
                    amount: '₦2,500.00',
                  ),
                  const TransactionItem(
                    icon: 'assets/images/giftcards_icon.png',
                    title: 'Giftcards',
                    subtitle: 'iTunes Card Sell',
                    amount: '₦103,200.00',
                  ),
                  _buildDateSection('17/06/2024'),
                  const TransactionItem(
                    icon: 'assets/images/betting_icon.png',
                    title: 'Betting',
                    subtitle: 'Sportybet',
                    amount: '₦4,000.00',
                  ),
                  const TransactionItem(
                    icon: 'assets/images/electricity_icon.png',
                    title: 'Electricity',
                    subtitle: 'BEDC Prepaid',
                    amount: '₦5,000.00',
                  ),
                  const TransactionItem(
                    icon: 'assets/images/crypto_icon.png',
                    title: 'Crypto',
                    subtitle: 'Bitcoin Buy',
                    amount: '₦50,000.00',
                  ),
                  const TransactionItem(
                    icon: 'assets/images/airtime_icon.png',
                    title: 'Airtime',
                    subtitle: 'Airtime Purchase',
                    amount: '₦2,500.00',
                  ),
                  const TransactionItem(
                    icon: 'assets/images/giftcards_icon.png',
                    title: 'Giftcards',
                    subtitle: 'iTunes Card Sell',
                    amount: '₦103,200.00',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDateSection(String date) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
      color: const Color(0xFF232533),
      width: double.infinity,
      child: Text(
        date,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
