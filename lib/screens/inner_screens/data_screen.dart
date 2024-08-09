import 'package:flutter/material.dart';
import '../../widgets/custom_button.dart';

class DataScreen extends StatefulWidget {
  const DataScreen({super.key});

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  String? _selectedNetwork;
  String? _selectedPackage;
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF161622),
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(top: 18.0),
          child: Text('Data'),
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
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Recent',
                  style: TextStyle(color: Colors.white, fontSize: 18)),
            ),
            const SizedBox(height: 14),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    5, (index) => _buildRecentItem('08012345678$index')),
              ),
            ),
            const SizedBox(height: 30),
            _buildDropdown('Network', _selectedNetwork,
                ['MTN', 'Airtel', 'Glo', '9mobile'], 'Select Network', (value) {
              setState(() {
                _selectedNetwork = value;
              });
            }),
            const SizedBox(height: 30),
            _buildDropdown('Package', _selectedPackage, [
              '2.5GB | 2days | ₦600',
              '1GB | 1day | ₦300',
              '5GB | 7days | ₦1500',
              '10GB | 30days | ₦3000'
            ], 'Select Package', (value) {
              setState(() {
                _selectedPackage = value;
                // Update amount based on selected package
                _amountController.text = value!.split('|').last.trim();
              });
            }),
            const SizedBox(height: 30),
            _buildTextInput('Phone Number', '0801 234 5678', _phoneController),
            const SizedBox(height: 30),
            _buildTextInput('Amount', '₦0.00', _amountController),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 60.0),
              child: CustomButton(text: 'Next', onPressed: () {}),
            ),
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
            radius: 30,
            backgroundImage: AssetImage('assets/images/profile_pic.png'),
          ),
          const SizedBox(height: 8),
          Text(number,
              style: const TextStyle(color: Colors.white, fontSize: 14)),
        ],
      ),
    );
  }

 Widget _buildDropdown(String label, String? value, List<String> items,
      String hint, Function(String?) onChanged) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(label, style: const TextStyle(color: Colors.white, fontSize: 18)),
        ),
        const SizedBox(height: 5),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: const Color(0xFF232533),
            borderRadius: BorderRadius.circular(8),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: value,
              hint: Text(hint, style: const TextStyle(color: Colors.white54)),
              isExpanded: true,
              dropdownColor: const Color(0xFF232533),
              style: const TextStyle(color: Colors.white, fontSize: 16),
              icon: const Icon(Icons.arrow_drop_down, color: Colors.white),
              items: items
                  .map((String value) => DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      ))
                  .toList(),
              onChanged: onChanged,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTextInput(
      String label, String hint, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            label,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        const SizedBox(height: 5),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: const Color(0xFF232533),
            borderRadius: BorderRadius.circular(8),
          ),
          child: TextField(
            controller: controller,
            style: const TextStyle(color: Colors.white, fontSize: 16),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hint,
              hintStyle: const TextStyle(color: Colors.white54),
            ),
          ),
        ),
      ],
    );
  }

}
