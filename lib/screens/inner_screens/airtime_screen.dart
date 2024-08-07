import 'package:flutter/material.dart';
import '../../widgets/custom_button.dart';

class AirtimeScreen extends StatelessWidget {
  const AirtimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF161622),
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(top: 18.0),
          child: Text('Airtime'),
        ),
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.only(top: 18.0, left: 16.0),
          child: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Container(
              padding: const EdgeInsets.all(6.0),
              decoration: const BoxDecoration(
                color: Color(0xFF1E1E2D),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.arrow_back_ios_outlined,
                  color: Colors.white),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Recent',
                style: TextStyle(color: Colors.white, fontSize: 18)),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    5, (index) => _buildRecentItem('08012345678$index')),
              ),
            ),
            const SizedBox(height: 20),
            const Text('Choose An Amount',
                style: TextStyle(color: Colors.white, fontSize: 18)),
            const SizedBox(height: 10),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                _buildAmountButton('₦100'),
                _buildAmountButton('₦200'),
                _buildAmountButton('₦500'),
                _buildAmountButton('₦1000'),
                _buildAmountButton('₦2000', isSelected: true),
                _buildAmountButton('₦5000'),
              ],
            ),
            const SizedBox(height: 20),
            _buildAmountInput(),
            const SizedBox(height: 20),
            _buildPhoneNumberInput(),
            const SizedBox(height: 20),
            _buildNetworkDropdown(),
            const Spacer(),
            CustomButton(text: 'Next', onPressed: () {}),
          ],
        ),
      ),
    );
  }

  Widget _buildRecentItem(String number) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/images/profile_pic.png'),
          ),
          const SizedBox(height: 5),
          Text(number,
              style: const TextStyle(color: Colors.white, fontSize: 12)),
        ],
      ),
    );
  }

  Widget _buildAmountButton(String amount, {bool isSelected = false}) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: isSelected ? const Color(0xFF5D9A99) : const Color(0xFF232533),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Text(amount, style: const TextStyle(color: Colors.white)),
    );
  }

  Widget _buildAmountInput() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFF232533),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Row(
        children: [
          Text('NGN', style: TextStyle(color: Color(0xFF5D9A99))),
          SizedBox(width: 10),
          Expanded(
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter Your Amount',
                hintStyle: TextStyle(color: Colors.white54),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPhoneNumberInput() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFF232533),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const TextField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Phone Number',
          hintStyle: TextStyle(color: Colors.white54),
        ),
      ),
    );
  }

  Widget _buildNetworkDropdown() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFF232533),
        borderRadius: BorderRadius.circular(8),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: 'MTN',
          isExpanded: true,
          dropdownColor: const Color(0xFF232533),
          style: const TextStyle(color: Colors.white),
          items: ['MTN', 'Airtel', 'Glo', '9mobile']
              .map((String value) => DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  ))
              .toList(),
          onChanged: (_) {},
        ),
      ),
    );
  }
}
