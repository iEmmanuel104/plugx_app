import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:plugx_app/widgets/custom_button.dart';
import 'package:plugx_app/widgets/custom_text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF161622),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Container(
            decoration: const BoxDecoration(
              color: Color(0xFF1E1E2D),
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(8.0),
            child:
                const Icon(Icons.arrow_back_ios_outlined, color: Colors.white),
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Sign In',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),
            const CustomTextField(
              labelText: 'Email Address',
              prefixIcon: Icons.email_outlined,
              hintText: 'johndoe@gmail.com',
            ),
            const SizedBox(height: 20),
            const CustomTextField(
              labelText: 'Password',
              prefixIcon: Icons.lock_outline,
              obscureText: true,
              suffixIcon: Icons.visibility_off,
              hintText: '••••••••',
            ),
            const SizedBox(height: 40),
            CustomButton(
              text: 'Login',
              onPressed: () {
                // Perform login logic
              },
            ),
            const SizedBox(height: 20),
            Center(
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                  children: [
                    const TextSpan(text: "I'm a new user. "),
                    TextSpan(
                      text: 'Sign Up',
                      style: const TextStyle(
                          color: Color(0xFF5D9A99),
                          fontWeight: FontWeight.bold),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pushNamed(context, '/signup');
                        },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
