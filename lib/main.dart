import 'package:flutter/material.dart';
import 'screens/loader_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/onboarding_screen.dart';
import 'screens/sign_in_screen.dart';
import 'screens/sign_up_screen.dart';

void main() {
  runApp(const PlugXChangeApp());
}

class PlugXChangeApp extends StatelessWidget {
  const PlugXChangeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plug XChange',
       theme: ThemeData(
        primaryColor: const Color(0xFF5D9A99), // Primary color
        scaffoldBackgroundColor: const Color(0xFF161622), // Background color
        fontFamily: GoogleFonts.poppins().fontFamily,
        textTheme: GoogleFonts.poppinsTextTheme().apply(
          bodyColor: Colors.white, // Text color
          displayColor: Colors.white,
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF5D9A99),
          secondary: const Color(0xFF1E1E2D), // Secondary color
        ),
      ),
      home: const LoaderScreen(),
      routes: {
        '/onboarding': (context) => const OnboardingScreen(),
        '/signin': (context) => const SignInScreen(),
        '/signup': (context) => const SignUpScreen(),
      },
    );
  }
}
