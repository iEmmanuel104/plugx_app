import 'package:flutter/material.dart';
import 'package:plugx_app/widgets/onboarding_content.dart';
import 'package:plugx_app/widgets/custom_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;
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
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      onboardingData.length,
                      (index) => buildDot(index: index),
                    ),
                  ),
                  CustomButton(
                    text: currentIndex == onboardingData.length - 1
                        ? 'Login'
                        : 'Next',
                    onPressed: () {
                      if (currentIndex == onboardingData.length - 1) {
                        Navigator.pushNamed(context, '/signin');
                      } else {
                        setState(() {
                          currentIndex++;
                        });
                      }
                    },
                  ),
                  currentIndex == onboardingData.length - 1
                      ? TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/signup');
                          },
                          child: const Text('Sign Up',
                              style: TextStyle(color: Colors.white)),
                        )
                      : Container(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildDot({required int index}) {
    return Container(
      height: 10,
      width: currentIndex == index ? 20 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        color: currentIndex == index ? Colors.white : Colors.grey,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
