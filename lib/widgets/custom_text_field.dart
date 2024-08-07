import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String labelText;
  final IconData? prefixIcon;
  final bool obscureText;
  final IconData? suffixIcon;
  final TextEditingController? controller;
  final String? hintText;

  const CustomTextField({
    super.key,
    required this.labelText,
    this.prefixIcon,
    this.obscureText = false,
    this.suffixIcon,
    this.controller,
    this.hintText,
  });

  @override
  // ignore: library_private_types_in_public_api
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
  }

  void _toggleObscureText() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.labelText,
          style: const TextStyle(color: Color(0xFF7E848D), fontSize: 16),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: widget.controller,
          obscureText: _obscureText,
          style: const TextStyle(color: Colors.white, fontSize: 18),
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
            prefixIcon: widget.prefixIcon != null
                ? Icon(widget.prefixIcon,
                    color: const Color(0xFFA2A2A7), size: 22)
                : null,
            suffixIcon: widget.suffixIcon != null
                ? GestureDetector(
                    onTap: widget.labelText == "Password"
                        ? _toggleObscureText
                        : null,
                    child: Icon(widget.suffixIcon,
                        color: const Color(0xFFA2A2A7), size: 22),
                  )
                : null,
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF232533)),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF232533)),
            ),
            contentPadding: const EdgeInsets.symmetric(vertical: 8),
          ),
        ),
      ],
    );
  }
}
