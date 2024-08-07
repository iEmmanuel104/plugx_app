import 'package:flutter/material.dart';
import 'package:plugx_app/widgets/custom_button.dart';
import 'package:plugx_app/widgets/custom_text_field.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF161622),
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(top: 18.0),
          child: Text('Profile'),
        ),
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(18.0),
          child: IconButton(
            icon: Container(
              decoration: const BoxDecoration(
                color: Color(0xFF1E1E2D),
                shape: BoxShape.circle,
              ),
            //   padding: const EdgeInsets.all(8.0),
              child:
                  const Icon(Icons.arrow_back_ios_outlined, color: Colors.white),
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/profile_pic.png'),
              ),
              const SizedBox(height: 20),
              const Text(
                'John Doe',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              CustomTextField(
                labelText: 'Full Name',
                prefixIcon: Icons.person_outline,
                controller: TextEditingController(text: 'John Doe'),
              ),
              const SizedBox(height: 20),
              CustomTextField(
                labelText: 'Email Address',
                prefixIcon: Icons.email_outlined,
                controller: TextEditingController(text: 'johndoe@gmail.com'),
              ),
              const SizedBox(height: 20),
              CustomTextField(
                labelText: 'Phone Number',
                prefixIcon: Icons.phone_outlined,
                controller: TextEditingController(text: '+2348123456789'),
              ),
              const SizedBox(height: 20),
              CustomTextField(
                labelText: 'Date of Birth',
                prefixIcon: Icons.cake_outlined,
                controller: TextEditingController(text: '28 September 2000'),
              ),
              const SizedBox(height: 20),
              const Text(
                'Joined 28 Jan 2021',
                style: TextStyle(color: Color(0xFF7E848D), fontSize: 14),
              ),
              const SizedBox(height: 30),
              CustomButton(
                text: 'Save',
                onPressed: () {
                  // TODO: Implement save functionality
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
