import 'package:flutter/material.dart';

class WalletBalanceCard extends StatelessWidget {
  final String balance;
  final VoidCallback? onTopUp;

  const WalletBalanceCard({
    super.key,
    required this.balance,
    this.onTopUp,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF5D9A99),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Wallet Balance',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              Icon(Icons.more_vert, color: Colors.white),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                balance,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton.icon(
                onPressed: onTopUp,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                icon: const Icon(Icons.add, color: Color(0xFF5D9A99)),
                label: const Text(
                  'Top Up',
                  style: TextStyle(color: Color(0xFF5D9A99)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
