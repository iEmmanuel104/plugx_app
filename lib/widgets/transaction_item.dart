import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;
  final String amount;

  const TransactionItem({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: const Color(0xFF1E1E2D),
          radius: 28,
          child: Image.asset(icon, width: 24, height: 24),
        ),
        title: Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        ),
        trailing: Text(
          amount,
          style: const TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
