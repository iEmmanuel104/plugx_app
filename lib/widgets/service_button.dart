import 'package:flutter/material.dart';

class ServiceButton extends StatelessWidget {
  final String icon;
  final String label;

  const ServiceButton({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: const Color(0xFF1E1E2D),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: Image.asset(icon, width: 30, height: 30),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(color: Colors.white, fontSize: 12),
        ),
      ],
    );
  }
}
