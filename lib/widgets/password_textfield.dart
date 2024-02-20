
import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {

  final TextEditingController controller;
  final String text;
  
  const PasswordTextField({
    super.key, 
    required this.controller,
    required this.text,
  });

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {

  bool passwordText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        hintText: widget.text,
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontFamily: 'Poppins',
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: Colors.black.withOpacity(0.05),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              passwordText = !passwordText;
            });
          },
          icon: Icon(
            passwordText ? Icons.visibility_off : Icons.visibility,
            color: Colors.grey,
          ),
        ),
      ),
      maxLines: 1,
      keyboardType: TextInputType.text,
      style: const TextStyle(
        fontFamily: 'Poppins',
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      obscureText: passwordText,
    );
  }
}
