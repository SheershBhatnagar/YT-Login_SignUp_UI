import 'package:flutter/material.dart';
import 'package:login_signup_demo_ui/screens/auth/login.dart';
import 'package:login_signup_demo_ui/utils/assets.dart';
import 'package:login_signup_demo_ui/utils/strings.dart';
import 'package:login_signup_demo_ui/widgets/auth_button.dart';
import 'package:login_signup_demo_ui/widgets/email_textfield.dart';
import 'package:login_signup_demo_ui/widgets/password_textfield.dart';
import 'package:login_signup_demo_ui/widgets/social_buttons.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  bool passwordText = true;
  bool checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Column(
              children: [
                const SizedBox(height: 30),
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
                      Strings().signUp,
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
                      Strings().createAnAccount,
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
                      Strings().orSignUpWithEmail,
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
                    const SizedBox(height: 10),
                    PasswordTextField(
                      controller: confirmPasswordController,
                      text: Strings().confirmPassword,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: Strings().iHaveReadThe,
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
                                text: Strings().privacyPolicy,
                                style: const TextStyle(
                                  color: Colors.blue,
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ],
                          ),
                        ),
                        Checkbox(
                          onChanged: (value) {
                            setState(() {
                              checkboxValue = value!;
                            });
                          },
                          value: checkboxValue,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    AuthButton(
                      text: Strings().signUp.toUpperCase(),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: Strings().alreadyHaveAnAccount,
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
                        text: Strings().signin,
                        style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ]),
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
