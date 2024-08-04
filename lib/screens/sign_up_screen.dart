import 'package:flutter/material.dart';
import 'package:plugx_app/widgets/custom_button.dart';
import 'package:plugx_app/widgets/custom_text_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Sign Up',
                style: TextStyle(color: Colors.white, fontSize: 24)),
            const SizedBox(height: 20),
            const CustomTextField(
              labelText: 'Full Name',
              prefixIcon: Icons.person,
            ),
            const SizedBox(height: 20),
            const CustomTextField(
              labelText: 'Phone Number',
              prefixIcon: Icons.phone,
            ),
            const SizedBox(height: 20),
            const CustomTextField(
              labelText: 'Email Address',
              prefixIcon: Icons.email,
            ),
            const SizedBox(height: 20),
            const CustomTextField(
              labelText: 'Password',
              prefixIcon: Icons.lock,
              obscureText: true,
            ),
            const SizedBox(height: 20),
            CustomButton(
              text: 'Sign Up',
              onPressed: () {
                // Perform sign-up logic
              },
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signin');
              },
              child: const Text('Already have an account. Login',
                  style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
