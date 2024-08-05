import 'package:flutter/material.dart';

class ServiceButton extends StatelessWidget {
  final String icon;
  final String label;
  final VoidCallback? onPressed;
  final bool isHomeScreen;

  const ServiceButton({
    super.key,
    required this.icon,
    required this.label,
    this.onPressed,
    this.isHomeScreen = false,
  });

  @override
  Widget build(BuildContext context) {
    if (isHomeScreen) {
      return GestureDetector(
        onTap: onPressed,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 15),
          decoration: BoxDecoration(
            color: const Color(0xFF1E1E2D),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset(icon, width: 40, height: 40),
              const SizedBox(width: 10),
              Text(
                label,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
        ),
      );
    } else {
      return GestureDetector(
        onTap: onPressed,
        child: Column(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: const Color(0xFF1E1E2D),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: Image.asset(icon, width: 32, height: 32),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              label,
              style: const TextStyle(color: Colors.white, fontSize: 14),
            ),
          ],
        ),
      );
    }
  }
}
