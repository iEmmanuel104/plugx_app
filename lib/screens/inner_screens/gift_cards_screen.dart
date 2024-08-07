import 'package:flutter/material.dart';

class GiftCardScreen extends StatelessWidget {
  const GiftCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF161622),
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(top: 18.0),
          child: Text('Select GiftCard'),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search GiftCards',
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
                  _buildCryptoItem('Apple', 'assets/images/apple.png'),
                  _buildCryptoItem('Amazon', 'assets/images/amazon.png'),
                  _buildCryptoItem('Google Play', 'assets/images/google_play.png'),
                  _buildCryptoItem('American Express)', 'assets/images/amex.png'),
                  _buildCryptoItem('Starbucks', 'assets/images/starbucks.png'),
                  _buildCryptoItem('Netflix', 'assets/images/netflix.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCryptoItem(
      String name, String assetPath) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Color(0xFF232533)),
          ),
        ),
        child: ListTile(
          leading: Container(
            padding: const EdgeInsets.all(2.0),
            decoration: const BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.fromBorderSide(
                  BorderSide(color: Colors.white, width: 2)),
            ),
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Image.asset(assetPath, width: 40, height: 40),
            ),
          ),
          title: Text(name, style: const TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
