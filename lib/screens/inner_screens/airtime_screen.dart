import 'package:flutter/material.dart';
import '../../widgets/custom_button.dart';
class AirtimeScreen extends StatefulWidget {
  const AirtimeScreen({super.key});

  @override
  State<AirtimeScreen> createState() => _AirtimeScreenState();
}

class _AirtimeScreenState extends State<AirtimeScreen> {
  final TextEditingController _amountController =
      TextEditingController(text: '2000.00');

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              const Text('Recent',
                  style: TextStyle(color: Colors.white, fontSize: 16)),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      15, (index) => _buildRecentItem('08012345678')),
                ),
              ),
              const SizedBox(height: 20),
              const Text('Choose An Amount',
                  style: TextStyle(color: Colors.white, fontSize: 16)),
              const SizedBox(height: 20),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  _buildAmountButton('₦100'),
                  _buildAmountButton('₦200'),
                  _buildAmountButton('₦500'),
                  _buildAmountButton('₦1000'),
                  _buildAmountButton('₦2000'),
                  _buildAmountButton('₦5000'),
                ],
              ),
              const SizedBox(height: 30),
              _buildAmountInput(),
              const SizedBox(height: 30),
              _buildPhoneNumberInput(),
              const SizedBox(height: 30),
              _buildNetworkDropdown(),
              const SizedBox(height: 30),
              CustomButton(text: 'Next', onPressed: () {}),
            ],
          ),
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

  Widget _buildAmountButton(String amount) {
    bool isSelected = _amountController.text == amount.substring(1);
    return ElevatedButton(
      onPressed: () {
        setState(() {
          _amountController.text = amount.substring(1);
        });
      },
      style: ElevatedButton.styleFrom(
        backgroundColor:
            isSelected ? const Color(0xFF5D9A99) : const Color(0xFF232533),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      ),
      child: Text(amount,
          style: const TextStyle(color: Colors.white, fontSize: 24)),
    );
  }

Widget _buildAmountInput() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Enter Your Amount',
          style: TextStyle(color: Color(0xFF5D9A99), fontSize: 16),
        ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            color: const Color(0xFF232533),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              const Text('NGN',
                  style: TextStyle(color: Color(0xFF5D9A99), fontSize: 24)),
              const SizedBox(width: 16),
              Expanded(
                child: TextField(
                  controller: _amountController,
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: '0.00',
                    hintStyle: TextStyle(color: Colors.white54),
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildPhoneNumberInput() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFF232533),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        style: const TextStyle(color: Colors.white, fontSize: 16),
        decoration: const InputDecoration(
          border: InputBorder.none,
          hintText: 'Phone Number',
          hintStyle: TextStyle(color: Colors.white54),
        ),
        keyboardType: TextInputType.phone,
        controller: TextEditingController(text: '08102345678'),
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
          style: const TextStyle(color: Colors.white, fontSize: 16),
          icon: const Icon(Icons.arrow_drop_down, color: Colors.white),
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
