import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;
  final String amount;

  const TransactionItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: const Color(0xFF1E1E2D),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Image.asset(icon, width: 24, height: 24),
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white, fontSize: 16),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(color: Colors.grey, fontSize: 12),
      ),
      trailing: Text(
        amount,
        style: const TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}
