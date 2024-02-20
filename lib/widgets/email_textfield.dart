import 'package:flutter/material.dart';
import 'package:login_signup_demo_ui/utils/strings.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({super.key});

  @override
  Widget build(BuildContext context) {

    final TextEditingController emailController = TextEditingController();

    return TextFormField(
      controller: emailController,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        hintText: Strings().email,
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
      ),
      maxLines: 1,
      keyboardType: TextInputType.emailAddress,
      style: const TextStyle(
        fontFamily: 'Poppins',
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
