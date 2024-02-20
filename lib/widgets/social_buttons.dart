import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class SocialLoginButton extends StatelessWidget {

  final String text;
  final String icon;
  final bool isFacebook;

  const SocialLoginButton({
    super.key,
    required this.text,
    required this.icon,
    required this.isFacebook,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: isFacebook ? Theme.of(context).primaryColor : Colors.white,
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 20,
        ),
        side: BorderSide(
          color: Colors.grey[300]!,
        ),
        elevation: 0,
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            icon,
            height: 20,
            width: 20,
          ),
          const Spacer(),
          Text(
            text,
            style: TextStyle(
              fontSize: 16,
              color: isFacebook ? Colors.white : Colors.black,
              fontFamily: 'Poppins',
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
