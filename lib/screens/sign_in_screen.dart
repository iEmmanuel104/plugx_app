import 'package:flutter/material.dart';
import 'package:plugx_app/widgets/custom_button.dart';
import 'package:plugx_app/widgets/custom_text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Sign In',
                style: TextStyle(color: Colors.white, fontSize: 24)),
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
              text: 'Login',
              onPressed: () {
                // Perform login logic
              },
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signup');
              },
              child: const Text('I\'m a new user. Sign Up',
                  style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
