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
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: const Color(0xFF5D9A99),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Wallet Balance',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Container(
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child:
                    const Icon(Icons.more_horiz, color: Color(0xFF5D9A99), size: 20),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                balance,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: onTopUp,
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        color: Color(0xFF5D9A99),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.add_circle_outline,
                          color: Colors.white, size: 18),
                    ),
                    const SizedBox(width: 2),
                    const Text(
                      'Top Up',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
