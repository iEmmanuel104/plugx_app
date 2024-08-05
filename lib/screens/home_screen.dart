import 'package:flutter/material.dart';
import '../widgets/wallet_balance_card.dart';
import '../widgets/service_button.dart';
import '../widgets/transaction_item.dart';
import 'services_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF161622),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/profile_pic.png'),
                          radius: 30,
                        ),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome back,',
                              style: TextStyle(
                                  color: Color(0xFF7E848D), fontSize: 16),
                            ),
                            Text(
                              'John Doe',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        print('Chat icon pressed');
                      },
                      child: Image.asset(
                        'assets/images/chat_icon.png',
                        width: 28,
                        height: 28,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                WalletBalanceCard(
                  balance: '₦56,500.00',
                  onTopUp: () {
                    print('Top Up pressed');
                  },
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ServiceButton(
                      icon: 'assets/images/crypto_icon.png',
                      label: 'Crypto',
                      onPressed: () {
                        print('Crypto pressed');
                      },
                      isHomeScreen: true,
                    ),
                    ServiceButton(
                      icon: 'assets/images/giftcards_icon.png',
                      label: 'Giftcards',
                      onPressed: () {
                        print('Giftcards pressed');
                      },
                      isHomeScreen: true,
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Utilities',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const ServicesScreen()),
                        );
                      },
                      child: const Text(
                        'More',
                        style:
                            TextStyle(color: Color(0xFF5D9A99), fontSize: 16),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ServiceButton(
                      icon: 'assets/images/airtime_icon.png',
                      label: 'Airtime',
                      onPressed: () {
                        print('Airtime pressed');
                      },
                    ),
                    ServiceButton(
                      icon: 'assets/images/data_icon.png',
                      label: 'Data',
                      onPressed: () {
                        print('Data pressed');
                      },
                    ),
                    ServiceButton(
                      icon: 'assets/images/electricity_icon.png',
                      label: 'Electricity',
                      onPressed: () {
                        print('Electricity pressed');
                      },
                    ),
                    ServiceButton(
                      icon: 'assets/images/betting_icon.png',
                      label: 'Betting',
                      onPressed: () {
                        print('Betting pressed');
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Transaction History',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {
                        print('See All Transactions pressed');
                      },
                      child: const Text(
                        'See All',
                        style:
                            TextStyle(color: Color(0xFF5D9A99), fontSize: 16),
                      ),
                    ),
                  ],
                ),
                const TransactionItem(
                  icon: 'assets/images/crypto_icon.png',
                  title: 'Crypto',
                  subtitle: 'Bitcoin Buy',
                  amount: '₦50,000.00',
                ),
                const TransactionItem(
                  icon: 'assets/images/airtime_icon.png',
                  title: 'Airtime',
                  subtitle: 'Airtime Purchase',
                  amount: '₦2,500.00',
                ),
                const TransactionItem(
                  icon: 'assets/images/giftcards_icon.png',
                  title: 'Giftcards',
                  subtitle: 'iTunes Card Sell',
                  amount: '₦103,200.00',
                ),
                const TransactionItem(
                  icon: 'assets/images/betting_icon.png',
                  title: 'Betting',
                  subtitle: 'Bet9ja',
                  amount: '₦4,000.00',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
