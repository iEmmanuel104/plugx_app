import 'package:flutter/material.dart';
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
      'title': 'Trade From\nAnywhere',
      'description':
          'Trade your crypto assets and other digital payment from anywhere in the world.'
    },
    {
      'image': 'assets/images/onboarding2.png',
      'title': 'Pay Utility\nBills',
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
                  buildDots: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      onboardingData.length,
                      (dotIndex) => buildDot(index: dotIndex),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50, left: 20, right: 20),
              child: Column(
                children: [
                  CustomButton(
                    text: currentIndex == onboardingData.length - 1
                        ? 'Login'
                        : 'Next',
                    onPressed: () {
                      if (currentIndex == onboardingData.length - 1) {
                        Navigator.pushNamed(context, '/signin');
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
                      child: CustomButton(
                        text: 'Sign Up',
                        onPressed: () {
                          Navigator.pushNamed(context,'/signup'); // Changed from pushReplacementNamed
                        },
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
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: 8,
      width: currentIndex == index ? 24 : 8,
      decoration: BoxDecoration(
        color:
            currentIndex == index ? Colors.blue : Colors.grey.withOpacity(0.5),
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}

class OnboardingContent extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final Widget buildDots;

  const OnboardingContent({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.buildDots,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image, height: MediaQuery.of(context).size.height * 0.4),
          const SizedBox(height: 20),
          buildDots,
          const SizedBox(height: 40),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Text(
            description,
            style: const TextStyle(color: Color(0xFF7E848D), fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
