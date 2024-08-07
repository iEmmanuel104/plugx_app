import 'package:flutter/material.dart';
import 'package:plugx_app/screens/inner_screens/contact_us_screen.dart';
import 'profile_screen.dart';
import 'inner_screens/delete_account_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF161622),
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(top: 18.0),
          child: Text('Settings'),
        ),
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: IconButton(
              icon: const Icon(Icons.qr_code_2_outlined),
              color: Colors.white,
              onPressed: () {
                // TODO: Implement QR code functionality
              },
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(18, 20, 18, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Center(
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/profile_pic.png'),
                    radius: 45,
                  ),
                  SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome back,',
                        style:
                            TextStyle(color: Color(0xFF7E848D), fontSize: 18),
                      ),
                      Text(
                        'John Doe',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            _buildSettingsItem(
                context, 'Personal Information', Icons.person_outline, () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProfileScreen()));
            }),
            _buildSettingsItem(context, 'Bank Information',
                Icons.account_balance_outlined, () {}),
            _buildSettingsItem(
                context, 'Currency', Icons.credit_card_outlined, () {},
                trailing:
                    const Text('NGN', style: TextStyle(color: Colors.white))),
            _buildSettingsItem(context, 'Notifications',
                Icons.notifications_none_outlined, () {},
                trailing: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                  child: const Text('2', style: TextStyle(color: Colors.white)),
                )),
            _buildSettingsItem(
                context, 'Contact Us', Icons.support_agent_outlined, () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ContactUsScreen()));
            }),
            _buildSettingsItem(
                context, 'Change Password', Icons.lock_outline_rounded, () {}),
            _buildSettingsItem(
                context, 'Privacy Policy', Icons.privacy_tip_outlined, () {}),
            _buildSettingsItem(
                context, 'Light/Dark Theme', Icons.brightness_6, () {},
                trailing: Switch(
                  value: true,
                  onChanged: (value) {},
                  activeColor: const Color(0xFF5D9A99),
                )),
            _buildSettingsItem(context, 'Delete Account', Icons.delete, () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DeleteAccountScreen()));
            }, textColor: Colors.red),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingsItem(
      BuildContext context, String title, IconData icon, VoidCallback onTap,
      {Widget? trailing, Color textColor = Colors.white}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Color(0xFF232533)),
          ),
        ),
        child: ListTile(
            leading: Icon(icon, color: Colors.white, size: 28),
            title: Text(title, style: TextStyle(color: textColor, fontSize: 18)),
            trailing: trailing ??
                const Icon(Icons.chevron_right, color: Color(0xFF7E848D), size: 24),
            onTap: onTap,
        ),
      ),
    );
  }
}
