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
                  _buildGiftCardItem('Apple'),
                  _buildGiftCardItem('Amazon'),
                  _buildGiftCardItem('Google Play'),
                  _buildGiftCardItem('American Express'),
                  _buildGiftCardItem('Starbucks'),
                  _buildGiftCardItem('Netflix'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGiftCardItem(String name) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.white24,
        child: Text(name[0]),
      ),
      title: Text(name, style: const TextStyle(color: Colors.white)),
    );
  }
}
