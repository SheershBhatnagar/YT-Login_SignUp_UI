import 'package:flutter/material.dart';

import 'package:login_signup_demo_ui/screens/auth/signup.dart';
import 'package:login_signup_demo_ui/utils/assets.dart';
import 'package:login_signup_demo_ui/utils/strings.dart';
import 'package:login_signup_demo_ui/widgets/auth_button.dart';
import 'package:login_signup_demo_ui/widgets/email_textfield.dart';
import 'package:login_signup_demo_ui/widgets/password_textfield.dart';
import 'package:login_signup_demo_ui/widgets/social_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final TextEditingController passwordController = TextEditingController();

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
          ),
          child: SingleChildScrollView(
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        Strings().signin,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        Strings().welcomeBack,
                        style: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      const SizedBox(height: 30),
                      SocialLoginButton(
                        text: Strings().continueFacebook,
                        icon: Assets().facebookIcon,
                        isFacebook: true,
                      ),
                      const SizedBox(height: 10),
                      SocialLoginButton(
                        text: Strings().continueGoogle,
                        icon: Assets().googleIcon,
                        isFacebook: false,
                      ),
                      const SizedBox(height: 40),
                      Text(
                        Strings().orLoginWithEmail,
                        style: TextStyle(
                          color: Colors.grey[600]!,
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      const SizedBox(height: 40),
                      const EmailTextField(),
                      const SizedBox(height: 10),
                      PasswordTextField(
                        controller: passwordController,
                        text: Strings().password,
                      ),
                      const SizedBox(height: 20),
                      AuthButton(
                        text: Strings().signin.toUpperCase(),
                      ),
                      const SizedBox(height: 30),
                      Text(
                        Strings().forgotPassword,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpScreen()));
                    },
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: Strings().dontHaveAnAccount,
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                            ),
                          ),
                          const TextSpan(
                            text: ' ',
                          ),
                          TextSpan(
                            text: Strings().signUp,
                            style: const TextStyle(
                              color: Colors.blue,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
