import 'package:flutter/material.dart';

class LoaderScreen extends StatefulWidget {
  const LoaderScreen({super.key});

  @override
  LoaderScreenState createState() => LoaderScreenState();
}

class LoaderScreenState extends State<LoaderScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<int> _animation;

  final List<String> _images = [
    'assets/images/plug1.png',
    'assets/images/plug2.png',
    'assets/images/plug3.png',
    'assets/images/plug2.png',
  ];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat();

    _animation =
        IntTween(begin: 0, end: _images.length - 1).animate(_controller)
          ..addListener(() {
            setState(() {});
          });

    // Navigate to onboarding screen after 5 seconds
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacementNamed('/onboarding');
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: const Color(0xFF161622),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: const BoxDecoration(
              color: Color(0xFF5D9A99),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Image.asset(_images[_animation.value], width: 120, height: 120),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'PLUG XCHANGE',
            style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  );
}
}