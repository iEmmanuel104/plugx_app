import 'package:flutter/material.dart';
import 'package:plugx_app/widgets/onboarding_content.dart';
import 'package:plugx_app/widgets/custom_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  OnboardingScreenState createState() => OnboardingScreenState();
}

class OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;
  final PageController _pageController = PageController();

  final List<Map<String, String>> onboardingData = [
    {
      'image': 'assets/images/onboarding1.png',
      'title': 'Trade From Anywhere',
      'description':
          'Trade your crypto assets and other digital payment from anywhere in the world.'
    },
    {
      'image': 'assets/images/onboarding2.png',
      'title': 'Pay Utility Bills',
      'description':
          'Manage and pay for your utility bills and other services all from one platform.'
    },
    {
      'image': 'assets/images/onboarding3.png',
      'title': 'Lets Get Started',
      'description':
          'Get started with Plug XChange and manage your finances easily.'
    },
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF161622),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemCount: onboardingData.length,
                itemBuilder: (context, index) => OnboardingContent(
                  image: onboardingData[index]['image'] ?? '',
                  title: onboardingData[index]['title'] ?? '',
                  description: onboardingData[index]['description'] ?? '',
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      onboardingData.length,
                      (index) => buildDot(index: index),
                    ),
                  ),
                  const SizedBox(height: 30),
                  CustomButton(
                    text: currentIndex == onboardingData.length - 1
                        ? 'Login'
                        : 'Next',
                    onPressed: () {
                      if (currentIndex == onboardingData.length - 1) {
                        Navigator.pushReplacementNamed(context, '/signin');
                      } else {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                  ),
                  if (currentIndex == onboardingData.length - 1)
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/signup');
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(color: Color(0xFF5D9A99)),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDot({required int index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(right: 5),
      height: 10,
      width: currentIndex == index ? 20 : 10,
      decoration: BoxDecoration(
        color: currentIndex == index
            ? const Color(0xFF0066FF)
            : Colors.grey.withOpacity(0.5),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
