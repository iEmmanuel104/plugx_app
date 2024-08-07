import 'package:flutter/material.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF161622),
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(top: 18.0),
          child: Text('Contact Us'),
        ),
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.all(18.0),
          child: IconButton(
            icon: Container(
              decoration: const BoxDecoration(
                color: Color(0xFF1E1E2D),
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(8.0),
              child: const Icon(Icons.arrow_back_ios_outlined, color: Colors.white),
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(18, 20, 18, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            _buildSettingsItem(context, 'Call Us', 'assets/images/contact_phone_icon.png', () {}),
            _buildSettingsItem(context, 'Chat With Us', 'assets/images/chat_room_icon.png', () {}),
            _buildSettingsItem(context, 'Locate Us', 'assets/images/map_marker_icon.png', () {}),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingsItem(
      BuildContext context, String title, String imagePath, VoidCallback onTap,
      {Widget? trailing, Color textColor = Colors.white}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading:
            Image.asset(imagePath, color: Colors.white, width: 28, height: 28),
        title: Text(title, style: TextStyle(color: textColor, fontSize: 18)),
        trailing: trailing ??
            const Icon(Icons.chevron_right, color: Colors.white, size: 24),
        onTap: onTap,
      ),
    );
  }
}
