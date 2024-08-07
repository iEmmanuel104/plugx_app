import 'package:flutter/material.dart';

class CryptoCurrencyScreen extends StatelessWidget {
  const CryptoCurrencyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF161622),
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(top: 18.0),
          child: Text('Select Crypto-Currency'),
        ),
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.only(top: 18.0, left: 16.0),
          child: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Container(
              padding: const EdgeInsets.all(6.0),
              decoration: const BoxDecoration(
                color: Color(0xFF1E1E2D),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.arrow_back_ios_outlined,
                  color: Colors.white),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 30),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search Crypto-Currency',
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
                  _buildCryptoItem('Bitcoin (BTC)', '₦99,450,000.00', -0.87),
                  _buildCryptoItem('Etherium (ETH)', '₦5,560,000.00', 4.16),
                  _buildCryptoItem('Tether USD (USDT)', '₦1,860.00', 2.51),
                  _buildCryptoItem('Dogecoin (DOGE)', '₦210.00', 0.90),
                  _buildCryptoItem('Litecoin (LTC)', '₦118,276.32', 2.34),
                  _buildCryptoItem('XRP (XRP)', '₦735.72', 4.16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCryptoItem(String name, String value, double percentage) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.white24,
        child: Text(name[0]),
      ),
      title: Text(name, style: const TextStyle(color: Colors.white)),
      subtitle: Text(value, style: const TextStyle(color: Colors.white70)),
      trailing: Text(
        '${percentage.isNegative ? '' : '+'}${percentage.toStringAsFixed(2)}%',
        style: TextStyle(
          color: percentage.isNegative ? Colors.red : Colors.green,
        ),
      ),
    );
  }
}
